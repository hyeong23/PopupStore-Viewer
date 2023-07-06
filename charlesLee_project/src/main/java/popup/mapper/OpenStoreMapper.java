package popup.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import popup.vo.StoreVo;

@Mapper
public interface OpenStoreMapper {

	public List<StoreVo> getOpenStoreList();

}
