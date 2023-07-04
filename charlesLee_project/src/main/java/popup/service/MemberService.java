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
	public Member getMemberByIdAndPw(String member_id, String member_pw) throws  Exception{
		
		Member member = memberMapper.getMemberByIdAndPw(member_id, member_pw);
		
		if(member == null) {
			throw new Exception("존재하지 않는 회원 입니다.");
		}
		
		return member;
	}
	//회원가입(일반)
	public boolean insertGeneralMember(String member_id, String member_pw, String member_nickname ,String member_email , int member_type) throws  Exception {
		
		boolean member = memberMapper.insertGeneralMember(member_id,member_pw,member_nickname,member_email,member_type);
			
		return member;
	}
	//회원가입(비지니스)
	public boolean insertBusinessMember(String member_id, String member_pw, String member_email,String member_company_name,
			int member_company_num, int member_type) throws Exception{
		
		boolean member = memberMapper.insertBusinessMember(member_id,member_pw,member_email, member_company_name,member_company_num,member_type);
			
		return member;
	}
	//ID체크
	public boolean getMemberById(String member_id) throws Exception {
		
		boolean result = true;
		
		Member check = memberMapper.getMemberById(member_id);
		
		if(check != null) {
			throw new Exception("이미 존재하는 아이디 입니다.");
		}
		
		
		return result;
	}
	//Email체크
		public boolean getMemberByEmail(String member_email) throws Exception {
			
			boolean result = true;
			
			Member check = memberMapper. getMemberByEmail(member_email);
			
			if(check != null) {
				throw new Exception("이미 존재하는 이메일 입니다.");
			}
			
			
			return result;
		}
	//NickName체크
		public boolean getMemberByNickName(String member_nickname) throws  Exception {
			
			boolean result = true;
			
			Member check = memberMapper.getMemberByNickName(member_nickname);
			
			if(check != null) {
				throw new Exception("이미 존재하는 닉네임 입니다.");
			}
			
			
			return result;
		}
		
	//CompanyName체크
		public boolean getMemberByCompanyName(String member_company_name) throws Exception {
			
			boolean result = true;
			
			Member check = memberMapper.getMemberByCompanyName(member_company_name);
			
			if(check != null) {
				throw new Exception("이미 존재하는 회사명 입니다.");
			}
			
			
			return result;
		}
	//CompanyNum체크
		public boolean getMemberByCompanyNum(int member_company_num) throws Exception {
	
			boolean result = true;
	
			Member check = memberMapper.getMemberByCompanyNum(member_company_num);
	
			if(check != null) {
				throw new Exception("이미 존재하는 사업자 번호 입니다.");
			}
	
	
			return result;
		}

		
		
		
		
		
		
}
