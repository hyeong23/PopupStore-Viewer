package popup.mapper;


import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import popup.dto.Category;
import popup.vo.StoreVo;

@Mapper
public interface OpenStoreMapper {

	public List<StoreVo> getOpenStoreList();

	
	public List<StoreVo> getMapList2(int storeNum);
	


	public List<StoreVo> getStoreByTitle(@Param("inputText") String inputText);


	public List<StoreVo> filterStoreList(@Param("storeNum") List<Integer> storeNum) throws SQLException;


	public int countStoreByStoreNum(int storeNum);


	

}
