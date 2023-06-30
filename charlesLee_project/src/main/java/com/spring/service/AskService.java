package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.AskMapper;

@Service
public class AskService {
	
	@Autowired
	AskMapper askMapper;
}
