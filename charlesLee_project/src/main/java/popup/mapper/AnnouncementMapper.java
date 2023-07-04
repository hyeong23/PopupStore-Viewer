package popup.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Announcement;

@Mapper
public interface AnnouncementMapper {

	// 게시물 리스트 조회
	public List<Announcement> selectAnnouncementList() throws Exception;
	
}
