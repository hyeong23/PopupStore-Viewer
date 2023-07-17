package popup.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.mapper.FavoriteMapper;

@Service
public class FavoriteService {

	@Autowired
	FavoriteMapper favoriteMapper;

	public List<Integer> getStoreByHeart(int customerNum) throws SQLException{
		
		return favoriteMapper.getStoreByHeart(customerNum);
	}
}
