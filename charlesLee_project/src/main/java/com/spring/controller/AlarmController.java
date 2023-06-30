package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.spring.service.AlarmService;

@Controller
public class AlarmController {
	
	@Autowired
	AlarmService alarmService;
}
