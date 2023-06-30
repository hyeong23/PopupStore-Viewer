package popup.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Member;

@Mapper
public interface MemberMapper {

	Member getMemberByIdAndPw(String member_id, String member_pw) throws SQLException;

}
