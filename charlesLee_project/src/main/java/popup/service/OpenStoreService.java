package popup.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Category;
import popup.mapper.OpenStoreMapper;
import popup.vo.StoreVo;

@Service
public class OpenStoreService {

	@Autowired
	OpenStoreMapper openStoreMapper;

	public List<StoreVo> getAllStore() {
		return openStoreMapper.getOpenStoreList();
	}

	
	public List<StoreVo> getMapStore2(int storeNum) {
		return openStoreMapper.getMapList2(storeNum);
		//System.out.println("test2");
	}


	public List<StoreVo> getStoreByTitle(String inputText) {
		return openStoreMapper.getStoreByTitle(inputText);
	}


	public List<StoreVo> filterStoreList(List<Integer> storeNum) throws SQLException{
		
		return openStoreMapper.filterStoreList(storeNum);
	}


	public int countStoreByStoreNum(int storeNum) {
		return openStoreMapper.countStoreByStoreNum(storeNum);
		
		
	}


	
	
	
	
}
