package popup.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import popup.dto.Announcement;
import popup.service.AnnouncementService;

@Controller
public class AnnouncementController {

	@Autowired
	AnnouncementService announcementService;

	// 조회
	// http://localhost:8081/announcement
	@RequestMapping(value = "/announcement", method = RequestMethod.GET)
	public String announcementList(Model model) throws Exception {

		List<Announcement> list = announcementService.selectAnnouncementList();

		model.addAttribute("list", list);
		
		System.out.println("announcement test");
		System.out.println(list);
		
		return "announcement";
	}

}
