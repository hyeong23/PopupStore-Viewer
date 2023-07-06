package popup.service;

import java.sql.SQLException;
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
	public Announcement selectAnnouncement(int announcement_num) throws Exception {
		return announcementMapper.selectAnnouncement(announcement_num);
	}

	// insert
	public boolean insertAnnouncement(Announcement announcement) throws SQLException, Exception {
		boolean result = false;

		int res = announcementMapper.insertAnnouncement(announcement);

		if (res != 0) {
			result = true;
		} else {
			throw new Exception("insert fail");
		}

		return result;
	}

	// update
	public boolean updateAnnouncement(Announcement announcement) throws SQLException, Exception {
		boolean result = false;

		int res = announcementMapper.updateAnnouncement(announcement);

		if (res != 0) {
			result = true;
		} else {
			throw new Exception("update fail");
		}

		return result;
	}

	// delete
	public boolean deleteAnnouncementByannouncement_num(int announcement_num) throws SQLException, Exception {
		boolean result = false;

		int res = announcementMapper.deleteAnnouncementByannouncement_num(announcement_num);

		if (res != 0) {
			result = true;
		} else {
			throw new Exception("delete fail");
		}

		return result;
	}
}
