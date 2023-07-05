package popup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Announcement;
import popup.mapper.AnnouncementMapper;

@Service
public class AnnouncementService {

	@Autowired
	AnnouncementMapper announcementMapper;

	// List
	public List<Announcement> selectAnnouncementList() throws Exception {
		return announcementMapper.selectAnnouncementList();
	}

	// select one
	public Announcement selectAnnouncement(int announcementNum) throws Exception {
		return announcementMapper.selectAnnouncement(announcementNum);
	}

}
