package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.PictureMapper;

@Service
public class PictureService {

	@Autowired
	PictureMapper pictureMapper;
}
