package popup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.mapper.AnnouncementMapper;

@Service
public class AnnouncementService {

	@Autowired
	AnnouncementMapper announcementMapper;
}
