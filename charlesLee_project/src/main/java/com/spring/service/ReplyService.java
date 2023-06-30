package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.ReplyMapper;

@Service
public class ReplyService {

	@Autowired
	ReplyMapper replyMapper;
}
