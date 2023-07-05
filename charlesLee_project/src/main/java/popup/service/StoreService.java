package popup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import popup.mapper.StoreMapper;
import popup.vo.StoreVo;

@Service
public class StoreService {

	@Autowired
	StoreMapper storeMapper;

	public List<StoreVo> getStoreList() throws Exception{
		
		return storeMapper.getStoreList();
	}
}
