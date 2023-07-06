package popup.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import popup.dto.Category;
import popup.dto.Store;
import popup.service.CategoryService;
import popup.service.StoreService;
import popup.vo.StoreVo;

@Controller
public class StoreController {
	
	
	@Autowired
	StoreService storeService;
	
	@Autowired
	CategoryService categoryService;
	
	
	
	@RequestMapping(value = "/storeList", method = RequestMethod.GET)
	public String storeListForm(Model model) throws Exception{
		
		List<StoreVo> store = storeService.getStoreList();
		
		model.addAttribute("store", store);

		return "storeList";
	}
	


	@RequestMapping(value = "/storeRegister", method = RequestMethod.GET)
	public String storeRegisterForm(Model model) throws Exception{

		return "storeRegister";
	}
	
	@RequestMapping(value = "/storeRegister", method = RequestMethod.POST)
	public String insertStore(@ModelAttribute Store store,
							  @Param("category1") String category1,
							  @Param("category2") String category2,
							  HttpSession session,
							  Model model) {
		
		String view = "error";
		
		boolean storeResult = false;
		boolean categoryResult1 = false;
		boolean categoryResult2 = false;
		int storeNum = 0;
		
		store.setMemberNum((int) session.getAttribute("memberNum"));
		
		try {
			storeResult = storeService.insertStore(store);
			storeNum = storeService.getMaxStoreNum();
			
			if(category2 != null) {
			
			categoryResult1 = categoryService.insertCategory(storeNum,category1); 
			categoryResult2 = categoryService.insertCategory(storeNum,category2); 
			
			}else {
				categoryResult1 = categoryService.insertCategory(storeNum,category1);
			}
			
			
			if(storeResult) {
				view = "redirect:storeList";
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return view;
		}
	
		
		
	
		
		return view;
	}
	
	
}
