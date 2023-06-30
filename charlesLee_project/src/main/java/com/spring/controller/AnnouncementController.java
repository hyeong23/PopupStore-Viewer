package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.spring.service.AnnouncementService;

@Controller
public class AnnouncementController {
	
	@Autowired
	AnnouncementService announcementService;
}
