package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.FavoriteMapper;

@Service
public class FavoriteService {

	@Autowired
	FavoriteMapper favoriteMapper;
}
