package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.spring.service.StoreService;

@Controller
public class StoreController {
	
	
	@Autowired
	StoreService storeService;
}
