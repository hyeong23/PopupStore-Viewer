package popup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.mapper.AlarmMapper;

@Service
public class AlarmService {
	
	@Autowired
	AlarmMapper alarmMapper;
}
