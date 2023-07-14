package popup.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import popup.service.OpenStoreService;
import popup.vo.StoreVo;

@Controller
public class FilterController {
	
	@Autowired
	OpenStoreService openStoreService;
	
	@RequestMapping(value = "/filter")
	public String filterHeader(Model model, HttpSession session) throws SQLException {


	List<StoreVo> openStoreList = openStoreService.getAllStore();
	

	
	return "calendar";
	
	}
	
}
