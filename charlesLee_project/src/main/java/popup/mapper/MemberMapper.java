package popup.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import popup.dto.Member;

@Mapper
public interface MemberMapper {

	Member getMemberByIdAndPw(String memberId, String memberPw) throws SQLException;

	boolean insertGeneralMember(String memberId, String memberPw, String memberNickname ,String memberEmail , long memberPhoneNum ,int memberType) throws SQLException;

	boolean insertBusinessMember(String memberId, String memberPw, String memberEmail, String memberCompanyName,
	
    int memberCompanyNum,long memberPhoneNum , int memberType) throws SQLException;

	Member getMemberById(String memberId) throws SQLException;

	Member getMemberByEmail(String memberEmail)throws SQLException;

	Member getMemberByNickname(String memberNickname)throws SQLException;

	Member getMemberByCompanyName(String memberCompanyName) throws SQLException;

	Member getMemberByCompanyNum(int memberCompanyNum) throws SQLException;
	
	Member getMemberByPhoneNum(long memberPhoneNum) throws SQLException;

	void updateMember(Member modifiedMember)throws IllegalArgumentException;
	
	@Delete("DELETE FROM Member WHERE member_id = #{memberId}")
	void deleteMember(@Param("memberId") String memberId);
	// 회원 정보 수정일자 업데이트
    void updateMemberUpdateDate(@Param("memberId") String memberId);



}
