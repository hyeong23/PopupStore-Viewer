package popup.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Member;

@Mapper
public interface MemberMapper {

	Member getMemberByIdAndPw(String member_id, String member_pw) throws SQLException;

	boolean insertGeneralMember(String member_id, String member_pw, String member_nickname ,String member_email , int member_type) throws SQLException;

	boolean insertBusinessMember(String member_id, String member_pw, String member_email, String member_company_name,
			int member_company_num, int member_type) throws SQLException;

	Member getMemberById(String member_id) throws SQLException;

	Member getMemberByEmail(String member_email)throws SQLException;

	Member getMemberByNickName(String member_nickname)throws SQLException;

	Member getMemberByCompanyName(String member_company_name) throws SQLException;

	Member getMemberByCompanyNum(int member_company_num) throws SQLException;

}
