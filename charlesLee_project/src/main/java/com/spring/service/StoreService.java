package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.StoreMapper;

@Service
public class StoreService {

	@Autowired
	StoreMapper storeMapper;
}
