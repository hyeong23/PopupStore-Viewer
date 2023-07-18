package popup.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Favorite;

@Mapper
public interface FavoriteMapper {

	List<Integer> getStoreByHeart(int customerNum) throws SQLException;

	boolean insertHeart(int storeNum, Object memberNum) throws SQLException;
	
	List<Favorite> checkHeart(int storeNum, Object memberNum)throws SQLException;

	boolean deleteHeart(int storeNum, Object memberNum)throws SQLException;


}
