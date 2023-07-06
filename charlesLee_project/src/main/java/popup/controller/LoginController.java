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
	public String login(@RequestParam("memberId") String memberId,
						@RequestParam("memberPw") String memberPw,
						HttpSession session,
						Model model) throws SQLException, Exception {
	
		String view = "error";
		
		Member member = memberService.getMemberByIdAndPw(memberId,memberPw);
	
		
		if(member.getMemberType() != -1) {
			
		 session.setAttribute("memberId", member.getMemberId());
		 session.setAttribute("memberPw", member.getMemberPw());
		 session.setAttribute("memberNum", member.getMemberNum());
		
		 
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
