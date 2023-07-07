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
	//로그인
	public Member getMemberByIdAndPw(String memberId, String memberPw) throws  Exception{
		
		Member member = memberMapper.getMemberByIdAndPw(memberId, memberPw);
		
		if(member == null) {
			throw new Exception("존재하지 않는 회원 입니다.");
		}
		
		return member;
	}
	//회원가입(일반)
	public boolean insertGeneralMember(String memberId, String memberPw, String memberNickname ,String memberEmail , int memberType) throws  Exception {
		
		boolean member = memberMapper.insertGeneralMember(memberId,memberPw,memberNickname,memberEmail,memberType);
			
		return member;
	}
	//회원가입(비지니스)
	public boolean insertBusinessMember(String memberId, String memberPw, String memberEmail,String memberCompanyName,
			int memberCompanyNum, int memberType) throws Exception{
		
		boolean member = memberMapper.insertBusinessMember(memberId,memberPw,memberEmail, memberCompanyName,memberCompanyNum,memberType);
			
		return member;
	}
	//ID체크
	public boolean getMemberById(String memberId) throws Exception {
		
		boolean result = true;
		
		Member check = memberMapper.getMemberById(memberId);
		
		if(check != null) {
			throw new Exception("이미 존재하는 아이디 입니다.");
		}
		
		
		return result;
	}
	//Email체크
		public boolean getMemberByEmail(String memberEmail) throws Exception {
			
			boolean result = true;
			
			Member check = memberMapper. getMemberByEmail(memberEmail);
			
			if(check != null) {
				throw new Exception("이미 존재하는 이메일 입니다.");
			}
			
			
			return result;
		}
	//NickName체크
		public boolean getMemberByNickName(String memberNickname) throws  Exception {
			
			boolean result = true;
			
			Member check = memberMapper.getMemberByNickName(memberNickname);
			
			if(check != null) {
				throw new Exception("이미 존재하는 닉네임 입니다.");
			}
			
			
			return result;
		}
		
	//CompanyName체크
		public boolean getMemberByCompanyName(String memberCompanyName) throws Exception {
			
			boolean result = true;
			
			Member check = memberMapper.getMemberByCompanyName(memberCompanyName);
			
			if(check != null) {
				throw new Exception("이미 존재하는 회사명 입니다.");
			}
			
			
			return result;
		}
	//CompanyNum체크
		public boolean getMemberByCompanyNum(int memberCompanyNum) throws Exception {
	
			boolean result = true;
	
			Member check = memberMapper.getMemberByCompanyNum(memberCompanyNum);
	
			if(check != null) {
				throw new Exception("이미 존재하는 사업자 번호 입니다.");
			}
	
	
			return result;
		}

	// 회원정보 수정 시 변경된 비밀번호 일치 체크
		public void updateMember(Member modifiedMember, String confirmPassword) {
			  try {
			    if (!modifiedMember.getMemberPw().equals(confirmPassword)) {
			      throw new IllegalArgumentException("비밀번호와 비밀번호 확인 값이 일치하지 않습니다.");
			    }
			    memberMapper.updateMember(modifiedMember);
			  } catch (IllegalArgumentException e) {
			    System.out.println(e.getMessage()); // 예외 메시지 출력 또는 원하는 처리 방식으로 변경
			  }
			}
		
	// 회원 탈퇴 	
		public void deleteMember(String memberId) throws SQLException {
	        try {
	            // 회원 삭제 로직 수행
	            memberMapper.deleteMember(memberId);
	        } catch (Exception e) {
	            // 예외 처리 로직
	            e.printStackTrace();
	            // 오류 발생 시 적절한 예외를 던지거나 오류 처리 로직을 수행
	        }
	    }
	}		
		
		
		

