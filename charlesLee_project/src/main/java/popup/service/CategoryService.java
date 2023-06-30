package popup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.mapper.CategroyMapper;

@Service
public class CategoryService {

	@Autowired
	CategroyMapper categoryMapper;
}
