package popup.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FavoriteMapper {

	List<Integer> getStoreByHeart(int customerNum) throws SQLException;

}
