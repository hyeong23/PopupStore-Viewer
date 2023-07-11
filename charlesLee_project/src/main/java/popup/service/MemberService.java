package popup.service;

import java.sql.Date;
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
	public boolean insertGeneralMember(String memberId, String memberPw, String memberNickname ,String memberEmail ,long memberPhoneNum, int memberType) throws  Exception {
		
		boolean member = memberMapper.insertGeneralMember(memberId,memberPw,memberNickname,memberEmail,memberPhoneNum,memberType);
			
		return member;
	}
	//회원가입(비지니스)
	public boolean insertBusinessMember(String memberId, String memberPw, String memberEmail,String memberCompanyName,
			int memberCompanyNum,long memberPhoneNum, int memberType) throws Exception{
		
		boolean member = memberMapper.insertBusinessMember(memberId,memberPw,memberEmail, memberCompanyName,memberCompanyNum,memberPhoneNum,memberType);
			
		return member;
	}


		
	//ID체크
	public boolean getMemberById(String memberId) throws Exception {
		
		boolean result = true;
		
		Member check = memberMapper.getMemberById(memberId);
		
		if(check == null) {
			result = false;
		}
		
		
		return result;
	}
	
	//ID체크
		public Member getMemberById2(String memberId) throws Exception {
			
			Member check = memberMapper.getMemberById(memberId);
		    
		    
		    return check;
		}
	
	//Email체크
		public boolean getMemberByEmail(String memberEmail) throws Exception {
			
			boolean result = true;
			
			Member check = memberMapper. getMemberByEmail(memberEmail);
			
			if(check == null) {
				result = false;
			}
			
			
			return result;
		}
	//NickName체크
		public boolean getMemberByNickname(String memberNickname) throws  Exception {
			
			boolean result = true;
			
			Member check = memberMapper.getMemberByNickname(memberNickname);
			
			if(check == null) {
				result = false;
			}
			
			
			return result;
		}	
			
		
	//CompanyName체크
		public boolean getMemberByCompanyName(String memberCompanyName) throws Exception {
			
			boolean result = true;
			
			Member check = memberMapper.getMemberByCompanyName(memberCompanyName);
			
			if(check == null) {
				result = false;
			}
			
			
			return result;
		}
	//CompanyNum체크
		public boolean getMemberByCompanyNum(int memberCompanyNum) throws Exception {
	
			boolean result = true;
			
			Member check = memberMapper.getMemberByCompanyNum(memberCompanyNum);
	
			if(check == null) {
				result = false;;
			}
	
	
			return result;
		}
	//PhoneNum체크
		public boolean getMemberByPhoneNum(long memberPhoneNum) throws Exception {
			boolean result = true;
			
			Member check = memberMapper.getMemberByPhoneNum(memberPhoneNum);
	
			if(check == null) {
				result = false;;
			}
	
	
			return result;
		}
				

	// 회원정보 수정 시 변경된 비밀번호 일치 체크
		public void updateMember(Member updateMember, String confirmPassword) {
			  try {
			    if (!updateMember.getMemberPw().equals(confirmPassword)) {
			      throw new IllegalArgumentException("비밀번호와 비밀번호 확인 값이 일치하지 않습니다.");
			    }
			 
			 // 현재 시간을 가져와서 수정일자로 설정(자동 업데이트)
		        Date currentDate = new Date(System.currentTimeMillis());
		        updateMember.setMemberUpdate(currentDate);
	            
	            
	            memberMapper.updateMember(updateMember);
	        } catch (IllegalArgumentException e) {
	            
	           
	            e.printStackTrace();
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

		public void updateMember(Member updateMember) {
			// TODO Auto-generated method stub
			
		}
		

	}		
		
		
		

