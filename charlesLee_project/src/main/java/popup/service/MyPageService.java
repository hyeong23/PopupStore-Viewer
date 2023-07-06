package popup.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Member;
import popup.mapper.MemberMapper;

@Service
public class MyPageService {


	@Autowired
	private MemberMapper memberMapper;

	public Member printOneById(String memberId) throws SQLException {
		Member member = memberMapper.getMemberById(memberId);
		return member;
	}

	public Member getMemberById(String memberId) throws SQLException {
	    return memberMapper.getMemberById(memberId);
	}

	public void modifyMember(Member modifiedMember) {
	    try {
	        memberMapper.updateMember(modifiedMember);
	        // 회원 정보 수정 완료
	    } catch (Exception e) {
	        // 예외 처리 로직
	        e.printStackTrace();
	        // 오류 발생 시 적절한 예외를 던지거나 오류 처리 로직을 수행
	    }
	}



}
