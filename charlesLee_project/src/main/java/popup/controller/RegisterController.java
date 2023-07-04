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
	public String general(@RequestParam("member_id") String member_id,
						  @RequestParam("member_pw") String member_pw,
						  @RequestParam("member_nickname") String member_nickname,
						  @RequestParam("member_email") String member_email,
						  Model model) throws  Exception{
		String view = "/error";
		int member_type = 1;
		
		boolean check1 = memberService.getMemberById(member_id);
		boolean check2 = memberService.getMemberByNickName(member_nickname);
		boolean check3 = memberService.getMemberByEmail(member_email);
		
		
		if(check1 || check2 || check3) {
			
			boolean member = memberService.insertGeneralMember(member_id,member_pw,member_nickname,member_email,member_type);
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
	public String business(@RequestParam("member_id") String member_id,
						  @RequestParam("member_pw") String member_pw,
						  @RequestParam("member_email") String member_email,
						  @RequestParam("member_company_name") String member_company_name,
						  @RequestParam("member_company_num") int member_company_num,
						  Model model) throws Exception{
		String view = "/error";
		int member_type = -1;
		
		boolean check1 = memberService.getMemberById(member_id);
		boolean check2 = memberService.getMemberByEmail(member_email);
		boolean check3 = memberService.getMemberByCompanyName(member_company_name);
		boolean check4 = memberService.getMemberByCompanyNum(member_company_num);
	
		if(check1 || check2 || check3 || check4 ) {
			
			boolean member = memberService.insertBusinessMember(member_id,member_pw,member_email, member_company_name,member_company_num,member_type);
			
			if(member == true) {
			 view = "/login";
			}
		}
	
		return view;
	}
	
}
