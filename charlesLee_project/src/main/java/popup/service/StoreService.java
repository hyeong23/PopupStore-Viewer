package popup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Store;
import popup.mapper.StoreMapper;
import popup.vo.StoreVo;

@Service
public class StoreService {

	@Autowired
	StoreMapper storeMapper;

	public List<StoreVo> getStoreList() throws Exception{
		
		return storeMapper.getStoreList();
	}

	public boolean insertStore(Store store) throws Exception{
		boolean result = false;
		
		int res = storeMapper.insertStore(store);
		
		if(res != 0) {
			result = true;
		} else {
			throw new Exception("store insert 실패");
		}
		
		return result;
		
	}

	public int getMaxStoreNum() throws Exception{
		
		return storeMapper.getMaxStoreNum();
	}
}
