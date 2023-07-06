package popup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Member;
import popup.mapper.MemberMapper;
@Service
public class LoginAPIService {
	
	@Autowired
	MemberMapper memberMapper;
	
	
	
	//API ID체크
	public boolean getAPIMemberById(String memberId) throws Exception {
		
		boolean result = true;
		
		Member check = memberMapper.getMemberById(memberId);
		
		if(check == null) {
			result = false;
		}
		
		
		return result;
	}
	//API Email체크
		public boolean getAPIMemberByEmail(String memberEmail) throws Exception {
			
			boolean result = true;
			
			Member check = memberMapper. getMemberByEmail(memberEmail);
			
			if(check == null) {
				result = false;
			}
			
			
			return result;
		}
	//API NickName체크
		public boolean getAPIMemberByNickname(String memberNickname) throws  Exception {
			
			boolean result = true;
			
			Member check = memberMapper.getMemberByNickname(memberNickname);
			
			if(check == null) {
				result = false;
			}
			
			
			return result;
		}
		
	//API CompanyName체크
			public boolean getMemberByCompanyName(String memberCompanyName) throws Exception {
				
				boolean result = true;
				
				Member check = memberMapper.getMemberByCompanyName(memberCompanyName);
				
				if(check == null) {
					result = false;
				}
				
				
				return result;
			}
	//API CompanyNum체크
		public boolean getMemberByCompanyNum(int memberCompanyNum) throws Exception {
	
			boolean result = true;
	
			Member check = memberMapper.getMemberByCompanyNum(memberCompanyNum);
	
			if(check == null) {
				result = false;;
			}
	
	
			return result;
		}	
		
		
}
