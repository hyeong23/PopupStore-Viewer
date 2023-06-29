package com.spring.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString 
public class Member {
	private int member_num;
	private String member_id;
	private String member_pw;
	private String member_nickname;
	private int member_type;
	private String member_company_name;
	private int member_company_num;
	private Date member_create;
	private Date member_update;
}
