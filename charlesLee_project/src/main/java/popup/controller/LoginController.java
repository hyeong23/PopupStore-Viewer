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
public class LoginController {
	
	@Autowired
	MemberService memberService;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("member_id") String member_id,
						@RequestParam("member_pw") String member_pw,
						HttpSession session,
						Model model) throws SQLException, Exception {
	
		String view = "error";
		
		Member member = memberService.getMemberByIdAndPw(member_id,member_pw);
		if(member.getMember_type() != -1) {
			
		 session.setAttribute("member_id", member.getMember_id());
		 session.setAttribute("member_pw", member.getMember_pw());
		 view = "redirect:/main";
		}	 
		
	
		 return view;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		
		if(session != null) {
			session.invalidate();
		}
		
		return "redirect:/login";
	}
	
	
	
	
	
	
}
