package popup.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import popup.service.MemberService;

@Controller
@RequestMapping("/deleteMember")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@PostMapping
    public String withdraw(HttpSession session) {
        String memberId = (String) session.getAttribute("memberId");
        try {
            memberService.deleteMember(memberId);
            session.invalidate(); // 세션 무효화
            return "redirect:/login";
        } catch (SQLException e) {
            // 처리할 예외 발생 시 예외 처리 로직
            e.printStackTrace();
            return "error"; // 적절한 오류 페이지로 이동
        }
    }
}

