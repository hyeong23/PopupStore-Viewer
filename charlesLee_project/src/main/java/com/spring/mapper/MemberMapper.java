package com.spring.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import com.spring.dto.Member;

@Mapper
public interface MemberMapper {

	Member getMemberByIdAndPw(String member_id, String member_pw) throws SQLException;

}
