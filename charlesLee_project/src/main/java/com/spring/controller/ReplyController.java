package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.spring.service.ReplyService;

@Controller
public class ReplyController {
	
	
	@Autowired
	ReplyService replyService;
}
