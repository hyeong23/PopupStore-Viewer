package popup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.mapper.CategoryMapper;

@Service
public class CategoryService {

	@Autowired
	CategoryMapper categoryMapper;

	public boolean insertCategory(int storeNum, String category1) throws Exception{
		
		return categoryMapper.insertCategory(storeNum, category1);
		
	}
}
