package popup.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import popup.dto.Member;
import popup.service.MemberService;

@Controller
public class RegisterController {
	
	@Autowired
	MemberService memberService;
	

	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerForm() {
		return "register";
	}
	
	
	
	//일반 회원가입
	@RequestMapping(value = "/general", method = RequestMethod.GET)
	public String generalForm() {
		return "general";
	}
	
	@RequestMapping(value = "/general", method = RequestMethod.POST)
	public String general(@RequestParam("memberId") String memberId,
						  @RequestParam("memberPw") String memberPw,
						  @RequestParam("memberNickname") String memberNickname,
						  @RequestParam("memberEmail") String memberEmail,
						  Model model) throws  Exception{
		String view = "/error";
		int memberType = 1;
		
		boolean check1 = memberService.getMemberById(memberId);
		boolean check2 = memberService.getMemberByNickName(memberNickname);
		boolean check3 = memberService.getMemberByEmail(memberEmail);
		
		
		if(check1 || check2 || check3) {
			
			boolean member = memberService.insertGeneralMember(memberId,memberPw,memberNickname,memberEmail,memberType);
			if(member == true) {
				 view = "/login";
				}	
		
		}

		return view;
	}
	
	
	
	
	
	
	
	//비지니스 회원가입
	@RequestMapping(value = "/business", method = RequestMethod.GET)
	public String businessForm() {
		return "business";
	}
	
	
	
	@RequestMapping(value = "/business", method = RequestMethod.POST)
	public String business(@RequestParam("memberId") String memberId,
						  @RequestParam("memberPw") String memberPw,
						  @RequestParam("memberEmail") String memberEmail,
						  @RequestParam("memberCompanyName") String memberCompanyName,
						  @RequestParam("memberCompanyNum") int memberCompanyNum,
						  Model model) throws Exception{
		String view = "/error";
		int memberType = -1;
		
		boolean check1 = memberService.getMemberById(memberId);
		boolean check2 = memberService.getMemberByEmail(memberEmail);
		boolean check3 = memberService.getMemberByCompanyName(memberCompanyName);
		boolean check4 = memberService.getMemberByCompanyNum(memberCompanyNum);
	
		if(check1 || check2 || check3 || check4 ) {
			
			boolean member = memberService.insertBusinessMember(memberId,memberPw,memberEmail, memberCompanyName,memberCompanyNum,memberType);
			
			if(member == true) {
			 view = "/login";
			}
		}
	
		return view;
	}
	
}
