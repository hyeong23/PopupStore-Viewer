package popup.controller;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
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
								@RequestParam(value = "storeTitle", required = false) String[] storeTitle,
								@Param("storeLoc") String storeLoc) throws SQLException 
										 {
		
		List<String> location = Arrays.asList("전체","서울", "경기","인천","강원","제주","부산","경남","대구","경북","울산","대전","충남","충북","광주","전남","전북");
		List<StoreVo> openStoreList = openStoreService.getAllStore();
		List<String> getBussinessMember = memberService.getBussinessMember();
		
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
			}else {
				storeNum = null;
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
			
			if(!"전체".equals(storeLoc)) {
				List<Integer> getStoreByLoc = storeService.getStoreByLoc(storeLoc);
				System.out.println("장소"+getStoreByLoc);
				storeNum.retainAll(getStoreByLoc);
			}
			
					
			
			System.out.println(storeNum);
						
			List<StoreVo> filterStoreList = openStoreService.filterStoreList(storeNum);
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		} catch (Exception e) {
			
			List<StoreVo> filterStoreList = null;
			
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		}
		
		

		
		
	return "calendar";
	
	}
	
}
