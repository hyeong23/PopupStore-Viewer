package popup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.mapper.StoreMapper;

@Service
public class StoreService {

	@Autowired
	StoreMapper storeMapper;
}
