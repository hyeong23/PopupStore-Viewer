package popup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.mapper.AskMapper;

@Service
public class AskService {
	
	@Autowired
	AskMapper askMapper;
}
