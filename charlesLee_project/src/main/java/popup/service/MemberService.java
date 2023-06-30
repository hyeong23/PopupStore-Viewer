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

}
