package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.spring.service.AskService;

@Controller
public class AskController {
	
	
	@Autowired
	AskService askService;
}
