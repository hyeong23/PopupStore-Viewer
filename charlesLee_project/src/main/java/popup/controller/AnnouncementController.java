package popup.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import popup.dto.Announcement;
import popup.service.AnnouncementService;

@Controller
public class AnnouncementController {

	@Autowired
	AnnouncementService announcementService;

	// 게시물 리스트 조회
	// http://localhost:8081/announcement
	@RequestMapping(value = "/announcement", method = RequestMethod.GET)
	public String announcementList(Model model) throws Exception {

		List<Announcement> list = announcementService.selectAnnouncementList();

		model.addAttribute("list", list);

		System.out.println("announcement test");
		System.out.println(list);

		return "announcement";
	}

	// 상세 조회
	// http://localhost:8081/announcement/announcement_num
	@RequestMapping(value = "/announcement/{announcement_num}", method = RequestMethod.GET)
	public String announcement(@PathVariable int announcement_num, Model model) throws Exception {

		Announcement announcement = announcementService.selectAnnouncement(announcement_num);

		model.addAttribute("announcement", announcement);

		System.out.println("announcement one test");
		System.out.println(announcement);

		return "announcementDetail";
	}

	// 게시물 작성
	// http://localhost:8081/announcement/
	
	// 수정
	
	// 삭제

	
}
