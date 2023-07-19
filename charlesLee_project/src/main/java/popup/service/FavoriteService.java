package popup.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Favorite;
import popup.mapper.FavoriteMapper;
import popup.vo.StoreVo;

@Service
public class FavoriteService {

	@Autowired
	FavoriteMapper favoriteMapper;

	public List<Integer> getStoreByHeart(int customerNum) throws SQLException{
		
		return favoriteMapper.getStoreByHeart(customerNum);
	}

	public boolean insertHeart(int storeNum, Object memberNum) throws SQLException {
			boolean result = favoriteMapper.insertHeart(storeNum, memberNum);
		return result;
	}
	
	public List<Favorite> checkHeart(int storeNum, Object memberNum) throws SQLException {
		List<Favorite> check = favoriteMapper.checkHeart(storeNum, memberNum);
		System.out.println(check);
		return check;
	}

	public boolean deleteHeart(int storeNum, Object memberNum) throws SQLException {
		boolean result = favoriteMapper.deleteHeart(storeNum, memberNum);
		return false;
	}

}
