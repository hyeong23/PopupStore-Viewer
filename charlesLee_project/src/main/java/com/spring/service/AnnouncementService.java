package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.AnnouncementMapper;

@Service
public class AnnouncementService {

	@Autowired
	AnnouncementMapper announcementMapper;
}
