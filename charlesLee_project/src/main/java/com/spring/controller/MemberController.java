package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.spring.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
}
