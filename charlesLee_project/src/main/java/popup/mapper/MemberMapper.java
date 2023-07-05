package popup.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Member;

@Mapper
public interface MemberMapper {

	Member getMemberByIdAndPw(String memberId, String memberPw) throws SQLException;

	boolean insertGeneralMember(String memberId, String memberPw, String memberNickname ,String memberEmail , int memberType) throws SQLException;

	boolean insertBusinessMember(String memberId, String memberPw, String memberEmail, String memberCompanyName,
			int memberCompanyNum, int memberType) throws SQLException;

	Member getMemberById(String memberId) throws SQLException;

	Member getMemberByEmail(String memberEmail)throws SQLException;

	Member getMemberByNickName(String memberNickname)throws SQLException;

	Member getMemberByCompanyName(String memberCompanyName) throws SQLException;

	Member getMemberByCompanyNum(int memberCompanyNum) throws SQLException;

}
