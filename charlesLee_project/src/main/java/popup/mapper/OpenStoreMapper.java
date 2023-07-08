package popup.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import popup.vo.StoreVo;

@Mapper
public interface OpenStoreMapper {

	public List<StoreVo> getOpenStoreList();

	
	public List<StoreVo> getMapList();
	


	public List<StoreVo> getStoreByTitle(@Param("inputText") String inputText);

}
