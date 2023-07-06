package popup.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Store;
import popup.vo.StoreVo;

@Mapper
public interface StoreMapper {

	public List<StoreVo> getStoreList() throws Exception;

	public int insertStore(Store store) throws Exception;

	public int getMaxStoreNum() throws Exception;

}
