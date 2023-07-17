package popup.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import popup.dto.Ask;
import popup.dto.Member;
import popup.dto.Store;
import popup.service.AskService;
import popup.service.MemberService;
import popup.service.StoreService;


@Controller
public class AdminController {
	
	@Autowired
	AskService askService;
	
	@Autowired
	MemberService memberService;
	@Autowired
	StoreService storeService;
	
	@RequestMapping(value = "/adminviews", method = RequestMethod.GET)
	public String adminForm(HttpSession session,
							Model model) throws SQLException, Exception{
		return "adminviews";
	}
	
	@RequestMapping(value = "/adminpage1", method = RequestMethod.GET)
	public String adminpage1(Model model) throws SQLException, Exception{
		List<Ask> ask = askService.getAllAsk();
		model.addAttribute("ask", ask);
		return "adminpage1";
	}
	@RequestMapping(value = "/adminpage1", method = RequestMethod.POST)
	public String adminpage3(Model model) throws SQLException, Exception{
		return "adminpage1";
	}
	@RequestMapping(value = "/adminpage2", method = RequestMethod.GET)
	public String adminpage2(Model model) throws SQLException, Exception{
		List<Member> member = memberService.getMember();
		List<Map<String, String>> member2 = storeService.getStore();
		model.addAttribute("member", member);
		model.addAttribute("member2", member2);
		return "adminpage2";
	}
	@RequestMapping(value = "/adminpage3", method = RequestMethod.GET)
	public String storeRegisterForm2(Model model) throws Exception{
		List<Map<String, String>> member = storeService.getStore();
		model.addAttribute("member", member);
		for(int i = 0; i < member.size(); i++){
			//System.out.println("list 순서 " + i + "번쨰"); 
	        for(Entry<String, String> elem : member.get(i).entrySet() ){ 
	        	 //System.out.println( String.format("키 : %s, 값 : %s", elem.getKey(), elem.getValue()) );
	        }
	            //System.out.println(key + " : " + value);// json객체 
	        //});
		}

		return "adminpage3";
	}
	@RequestMapping(value = "/storeRegister2", method = RequestMethod.POST)
	public String storeRegisterForm3(@RequestParam(value = "store") List<Map<String, String>> store,
									Model model) throws Exception{
		System.out.println(store); 
		//List<Map<String, String>> member = storeService.getStore2(storeNum);
		//List<Store> member = storeService.getStore2(storeNum);
		//System.out.println(member);
		//model.addAttribute("member", member);
		
		for(int i = 0; i < store.size(); i++){
			System.out.println("list 순서 " + i + "번쨰"); 
	        for(Entry<String, String> elem : store.get(i).entrySet() ){ 
	        	 System.out.println( String.format("키 : %s, 값 : %s", elem.getKey(), elem.getValue()) );
	        }
	            //System.out.println(key + " : " + value);
	        //}
		}

		return "storeRegister2";
	}
	@RequestMapping(value = "/storeRegister2/{num}", method = RequestMethod.GET)
	public String storeRegisterForm(Model model,
									@PathVariable int num) throws Exception{
		List<Map<String, String>> member = storeService.getStore2(num);
		model.addAttribute("member", member);
		for(int i = 0; i < member.size(); i++){
			System.out.println("list 순서 " + i + "번쨰"); 
	        for(Entry<String, String> elem : member.get(i).entrySet() ){ 
	        	 System.out.println( String.format("키 : %s, 값 : %s", elem.getKey(), elem.getValue()) );
	        }
	            //System.out.println(key + " : " + value);// json객체 
	        //});
		}

		return "storeRegister2";
	}
	@RequestMapping(value = "/storeRegister2", method = RequestMethod.GET)
	public String storeRegisterForm(Model model) throws Exception{
		List<Map<String, String>> member = storeService.getStore2(9);
		model.addAttribute("member", member);
		for(int i = 0; i < member.size(); i++){
			System.out.println("list 순서 " + i + "번쨰"); 
	        for(Entry<String, String> elem : member.get(i).entrySet() ){ 
	        	 System.out.println( String.format("키 : %s, 값 : %s", elem.getKey(), elem.getValue()) );
	        }
	            //System.out.println(key + " : " + value);// json객체 
	        //});
		}

		return "storeRegister2";
	}
	@RequestMapping(value = "/adminpage3", method = RequestMethod.POST)
	public String updateStore(@ModelAttribute Store store,
							  @Param("category1") String category1,
							  @Param("category2") String category2,
							  @RequestPart("picture") MultipartFile[] pictures,
							  HttpSession session,
							  Model model)  {
			String view = "error";
				
				boolean storeResult = false;
				boolean categoryResult1 = false;
				boolean categoryResult2 = false;
				boolean pictureResult = false;
				
				int storeNum = 0;
				
				try {
					//login 하면 memberNum session에 보관 시킨 후 가져와서 store의 memberNum에 추가
					//store.setMemberNum((int) session.getAttribute("memberNum"));
					
					//storeResult = storeService.updateStore(store);
					
					//스토어 insert후 storeNum이 가장 큰 값을 가져오면 storeNum을 알수 있음
					System.out.println(storeNum + "테스형");
					//스토어 insert후 storeNum이 가장 큰 값을 가져오면 storeNum을 알수 있음
					//storeNum = store.getStoreNum();
					System.out.println(storeNum + "테스형" + category1 + category2);
					System.out.println(store);
					if(category2 != null) {
					System.out.println(category1 + " " + category2);
					//categoryResult1 = categoryService.updateCategory(storeNum,category1); 
					//categoryResult2 = categoryService.updateCategory(storeNum,category2); 
					
					}else {
						//categoryResult1 = categoryService.updateCategory(storeNum,category1);
						System.out.println(category1 + " " + category2);
					}
					
					//for문으로 여러파일 업로드
					for (MultipartFile picture : pictures) {
			            System.out.println(picture.getOriginalFilename());
			            //pictureResult = pictureService.updatePicture(storeNum,picture);
			        }
					
					
				} catch (Exception e) {
					e.printStackTrace();
					return view;
				}
		
		return "adminpage3";
	}
	@RequestMapping(value = "/adminpage5", method = RequestMethod.GET)
	public String storeRegisterForm22(Model model) throws Exception{
		return "adminpage5";
	}
	@RequestMapping(value = "/askupdate", method = RequestMethod.POST)
	public String askupdate(@RequestParam("id") int ask_num,
			Model model) throws SQLException, Exception {
				System.out.println("login10" + ask_num);
				boolean ask = askService.updateAsk(ask_num, 1);
				return "redirect:/adminpage1";
	}
	@RequestMapping(value = "/askupdelete", method = RequestMethod.POST)
	public String askdelete(@RequestParam("id") int ask_num,
			Model model) throws SQLException, Exception {
				System.out.println("login10" + ask_num);
				boolean ask = askService.updateAsk(ask_num, 2);
				return "redirect:/adminpage1";
	}
	
	@RequestMapping(value = "/businessupate", method = RequestMethod.POST)
	public String update(@RequestParam("id") int member_num,
						Model model) throws SQLException, Exception {
		System.out.println("login4" + member_num);
		
		boolean member = memberService.businessupdate(member_num, 1);
		System.out.println("넘기기 테스트체크");
		//String view = "error";
		//System.out.println("testd1");
		//List<Member> member = memberService.getMemberById();
		//System.out.println("testd3");
		//sSystem.out.println(member.get(0));
		
		//System.out.println("testd");
		//model.addAttribute("member", member);
			 
		 //view = "login3";
	
		 return "redirect:/adminpage2";
	}
	@RequestMapping(value = "/businessdelete", method = RequestMethod.POST)
	public String delete(@RequestParam("id") int member_num,
						Model model) throws SQLException, Exception {
		System.out.println("login5" + member_num);
		
		boolean member = memberService.businessdelete(member_num);
		//String view = "error";
		//System.out.println("testd1");
		//List<Member> member = memberService.getMemberById();
		//System.out.println("testd3");
		//sSystem.out.println(member.get(0));
		
		//System.out.println("testd");
		//model.addAttribute("member", member);
			 
		 //view = "login3";
	
		 return "redirect:/adminpage2";
	}
}
