package popup.controller;


import java.sql.SQLException;


import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	// 회원정보 수정
	@RequestMapping(value = "/mypage/update/{memberId}", method = RequestMethod.POST)
	public String updateMyPage(@ModelAttribute Member updateMember, Model model) throws Exception {
		// 마이페이지 수정 로직을 수행
		memberService.updateMember(updateMember);
		
		// 수정된 회원 정보를 다시 조회하여 모델에 추가
		String memberId = updateMember.getMemberId();
		Member member = memberService.getMemberById2(memberId);
		model.addAttribute("member", member);
		System.out.println("mypage test");
		// 마이페이지로 리디렉션합니다.
		return "mypageUpdate";
	}
	
	// 회원 탈퇴
	@RequestMapping(value = "/mypage/{memberId}", method = RequestMethod.POST)
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





