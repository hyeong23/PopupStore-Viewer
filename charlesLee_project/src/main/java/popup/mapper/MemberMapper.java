package popup.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Member;

@Mapper
public interface MemberMapper {

	Member getMemberByIdAndPw(String member_id, String member_pw) throws SQLException;

	boolean insertMember(String member_id, String member_pw, String member_nickname ,String member_email , int member_type) throws SQLException;

}
