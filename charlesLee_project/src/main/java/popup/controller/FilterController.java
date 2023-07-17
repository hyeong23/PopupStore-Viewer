package popup.controller;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import popup.dto.Category;
import popup.service.CategoryService;
import popup.service.FavoriteService;
import popup.service.MemberService;
import popup.service.OpenStoreService;
import popup.service.StoreService;
import popup.vo.StoreVo;

@Controller
public class FilterController {
	
	@Autowired
	OpenStoreService openStoreService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	FavoriteService favoriteService;
	
	@Autowired
	StoreService storeService;
	
	@RequestMapping(value = "/calendar/filter", method = RequestMethod.GET)
	public String filterHeader(Model model, HttpSession session , 
								@Param("category") String category,
								@RequestParam(value = "memberCompanyName", required = false) String[] memberCompanyName,						
								@Param("heart") int heart,
								@Param("startDate") int startDate,
								@RequestParam(value = "storeTitle", required = false) String[] storeTitle) throws SQLException 
										 {
		try {
			List<Integer> storeNum = new ArrayList<>();
			
			//storeTitle 같은 store 가져오기
			if(storeTitle != null) {
				List<Integer> getStoreByStoreTitle = storeService.getStoreByStoreTitle(storeTitle);
				System.out.println("제목"+getStoreByStoreTitle);
				storeNum.addAll(getStoreByStoreTitle);
				}
			//companyName이 같은 member의 store_num 가져오기
			if(memberCompanyName != null) {		
				List<Integer> getStoreByCompanyName = storeService.getStoreByCompanyName(memberCompanyName);
				System.out.println("작성자"+getStoreByCompanyName);
				storeNum.retainAll(getStoreByCompanyName);
			}
			//category가 같은 store_num 가져오기 , select 면 실행x
			if(!"select".equals(category)) {
				List<Integer> getStoreByCategory = categoryService.getStoreByCategory(category);	
				System.out.println("카테고리"+getStoreByCategory);
				storeNum.retainAll(getStoreByCategory);
			}
			
			
		
			//heart 가 1이면 session member_id 랑 일치하는 store_num 가져오기, 0이면 진행x
			if(heart == 1) {
				int customerNum = (int) session.getAttribute("memberNum");
				List<Integer> getStoreByHeart = favoriteService.getStoreByHeart(customerNum);
				System.out.println("하트"+getStoreByHeart);
				storeNum.retainAll(getStoreByHeart);
			}
			
			//0이면 실행 x ,1이면 startDate가 sysDate 보다 작은 store 가져오기,2면 starDate가 sysDate 보다 큰 store 가져오기
			if(startDate == 1) {
				List<Integer> getStoreBySmallDate = storeService.getStoreBySmallDate();
				System.out.println("날짜"+getStoreBySmallDate);
				storeNum.retainAll(getStoreBySmallDate);
			}else if(startDate == 2) {
				List<Integer> getStoreByBigDate = storeService.getStoreByBigDate();
				System.out.println("날짜"+getStoreByBigDate);
				storeNum.retainAll(getStoreByBigDate);
			}
			System.out.println(storeNum);
			
			List<StoreVo> openStoreList = openStoreService.getAllStore();
			List<StoreVo> filterStoreList = openStoreService.filterStoreList(storeNum);
			List<String> getBussinessMember = memberService.getBussinessMember();
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
		} catch (Exception e) {
			List<StoreVo> openStoreList = openStoreService.getAllStore();
			List<StoreVo> filterStoreList = openStoreService.getAllStore();
			List<String> getBussinessMember = memberService.getBussinessMember();
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
		}
		
		

		
		
	return "calendar";
	
	}
	
}
