package popup.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Member;
import popup.mapper.MemberMapper;

@Service
public class MemberService {
	
	@Autowired
	MemberMapper memberMapper; 

	public Member getMemberByIdAndPw(String member_id, String member_pw) throws SQLException, Exception{
		
		Member member = memberMapper.getMemberByIdAndPw(member_id, member_pw);
		
		if(member == null) {
			throw new Exception("존재하지 않는 회원 입니다.");
		}
		
		return member;
	}

	public boolean insertMember(String member_id, String member_pw, String member_nickname ,String member_email , int member_type) throws SQLException , Exception {
		
		boolean member = memberMapper.insertMember(member_id,member_pw,member_nickname,member_email,member_type);
		
		if(member == false) {
			throw new Exception("회원가입 실패");
		}
		
		return member;
	}

}
