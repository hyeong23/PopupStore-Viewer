package popup.controller;


import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import popup.dto.Member;
import popup.service.MemberService;

@Controller
public class MyPageController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String viewMyPage(Model model,HttpSession session) throws Exception {
	    // 현재 로그인한 사용자의 정보를 가져옵니다.
	    String memberId = (String) session.getAttribute("memberId");
	    Member member = memberService.getMemberById2(memberId);

        System.out.println(member);
	    // 모델에 사용자 정보를 추가합니다.
	    model.addAttribute("member", member);

	    return "mypage";
	}
	
	
	@RequestMapping(value = "/mypageUpdate", method = RequestMethod.GET)
	public String viewMyPageUpdate(Model model,HttpSession session) throws Exception {
	    // 현재 로그인한 사용자의 정보를 가져옵니다.
	    String memberId = (String) session.getAttribute("memberId");
	    Member member = memberService.getMemberById2(memberId);

        System.out.println(member);
	    // 모델에 사용자 정보를 추가합니다.
	    model.addAttribute("member", member);

	    return "mypageUpdate";
	}
	
	// 회원정보 수정
	@RequestMapping(value = "/mypageUpdate", method = RequestMethod.POST)
	public String updateMember(
	        @RequestParam("memberId") String memberId,
	        @RequestParam("memberPw") String memberPw,
	        @RequestParam("memberPwCheck") String memberPwCheck,
	        @RequestParam(value = "memberNickname", required = false) String memberNickname,
	        @RequestParam("memberEmail") String memberEmail,
	        @RequestParam("memberType") int memberType,
	        @RequestParam("memberCompanyNum") int memberCompanyNum, // 사업자 번호
	        Model model,
	        RedirectAttributes redirectAttributes
	){
	   System.out.println("Here In Controller");
	   
	   if (!memberPw.equals(memberPwCheck)) {
	            // 비밀번호와 비밀번호 확인이 일치하지 않을 경우
	            return "redirect:/mypageUpdate";
	        }
       try {
	     // 회원 정보를 HashMap으로 구성
	        HashMap<String, Object> memberInfo = new HashMap<>();
	        memberInfo.put("memberId", memberId);
	        memberInfo.put("memberPw", memberPwCheck);
	        memberInfo.put("memberNickname", memberNickname);
	        memberInfo.put("memberEmail", memberEmail);
	        memberInfo.put("memberType", memberType);
	        
	        // 비즈니스 회원인 경우에만 사업자 번호 업데이트
	        if (memberType == 2) {
	            memberInfo.put("memberCompanyNum", memberCompanyNum);
	        }

	        // 생성일을 회원가입 날짜로 설정
	        LocalDate signUpDate = LocalDate.now();
	        Date memberCreate = Date.valueOf(signUpDate);
	        memberInfo.put("memberCreate", memberCreate);

	        // 수정일을 현재 날짜로 설정
	        LocalDateTime now = LocalDateTime.now();
	        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	        String formattedModifiedDate = now.format(dateTimeFormatter);
	        Date memberUpdate = Date.valueOf(LocalDate.parse(formattedModifiedDate.substring(0, 10)));
	        memberInfo.put("memberUpdate", memberUpdate);

	        // 회원 정보 업데이트
	        updateMember(memberInfo);

	        // 수정된 회원 정보를 다시 조회하여 모델에 추가
	        Member updatedMember;
			try {
				updatedMember = memberService.getMemberById2(memberId);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "/mypageUpdate";
			}
	        model.addAttribute("member", updatedMember);

	        redirectAttributes.addFlashAttribute("success", "회원 정보가 수정되었습니다.");
	        return "redirect:/mypageUpdate";
	    } catch (IllegalArgumentException e) {
	        redirectAttributes.addFlashAttribute("error", e.getMessage());
	        return "redirect:/mypageUpdate";
	    }
	}

	// 회원 정보 업데이트
	private void updateMember(HashMap<String, Object> memberInfo) {
	    // memberId 가져오기
	    String memberId = (String) memberInfo.get("memberId");

	    // memberPw 가져오기
	    String memberPw = (String) memberInfo.get("memberPw");

	    // nickname 가져오기
	    String memberNickname = (String) memberInfo.get("memberNickname");

	    // email 가져오기
	    String memberEmail = (String) memberInfo.get("memberEmail");

	    // memberType 가져오기
	    int memberType = (int) memberInfo.get("memberType");

	    // createdDate 가져오기
	    // 필요에 따라 적절한 처리를 수행하여 생성일 정보를 설정

	    // modifiedDate 가져오기
	    // 필요에 따라 적절한 처리를 수행하여 수정일 정보를 설정

	    // Member 객체 생성
	    Member modifiedMember = new Member();
	    modifiedMember.setMemberId(memberId);
	    modifiedMember.setMemberPw(memberPw);
	    modifiedMember.setMemberNickname(memberNickname);
	    modifiedMember.setMemberEmail(memberEmail);
	    modifiedMember.setMemberType(memberType);

	 // 비즈니스 회원인 경우에만 사업자 번호 업데이트
	    if (memberType == 2) {
	        int memberCompanyNum = (int) memberInfo.get("memberCompanyNum");
	        modifiedMember.setMemberCompanyNum(memberCompanyNum);
	    }

	    
	    // 업데이트 로직 구현
	    memberService.updateMember(modifiedMember);
	}


	
	// 회원 탈퇴
	@RequestMapping(value = "/deleteMember", method = RequestMethod.POST)
    public String deleteMember(HttpSession session) {
        String memberId = (String) session.getAttribute("memberId");
        try {
            memberService.deleteMember(memberId);
            session.invalidate(); // 세션 무효화
            return "redirect:/main";
        } catch (SQLException e) {
            // 처리할 예외 발생 시 예외 처리 로직
            e.printStackTrace();
            return "error"; // 적절한 오류 페이지로 이동
        }
    }
	
}





