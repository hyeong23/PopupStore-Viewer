package popup.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Announcement;

@Mapper
public interface AnnouncementMapper {

	// 게시물 리스트 조회
	public List<Announcement> selectAnnouncementList() throws Exception;

	// 게시글 상세 조회
	public Announcement selectAnnouncement(int announcementNum) throws Exception;

}
