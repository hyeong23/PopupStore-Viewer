package popup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.mapper.FavoriteMapper;

@Service
public class FavoriteService {

	@Autowired
	FavoriteMapper favoriteMapper;
}
