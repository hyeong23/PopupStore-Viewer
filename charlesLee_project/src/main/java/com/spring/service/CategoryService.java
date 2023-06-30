package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.CategroyMapper;

@Service
public class CategoryService {

	@Autowired
	CategroyMapper categoryMapper;
}
