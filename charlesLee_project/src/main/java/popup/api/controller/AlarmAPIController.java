package popup.api.controller;

import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import popup.service.AlarmService;
import popup.service.PictureService;
import popup.service.StoreService;


@RestController
@RequiredArgsConstructor
public class AlarmAPIController {
	
	@Autowired
	AlarmService alarmService;
	
	@Autowired
	StoreService storeService;
	
	@RequestMapping(value = "/api/insertAlarm", method = RequestMethod.POST)
	public boolean insertAlarm(HttpSession session ,  
						@RequestParam(name = "storeNum", required = false) int storeNum,
            			@RequestParam(name = "storeTitle", required = false) String storeTitle
            			) throws Exception {
		
		boolean result = true;

		int memberNum = (int) session.getAttribute("memberNum");
		
		Date storeStart = storeService.getDateByStoreNum(storeNum);
		
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(storeStart);

		// storeStart에서 하루를 뺀 날짜 계산
		calendar.add(Calendar.DAY_OF_MONTH, -1);
		
		// Calendar 객체에서 Date로 변환		
		Date alarmTime = calendar.getTime();
		
		
		
		String alarmContent = storeTitle + " 팝업스토어가 내일 시작됩니다.";
		

			result = alarmService.insertAlarm(memberNum,storeNum,alarmContent,alarmTime);
			
		
		return result;
	}
	
	
	
	
	@RequestMapping(value = "/api/deleteAlarm", method = RequestMethod.POST)
	public boolean deleteAlarm(HttpSession session ,  
						@RequestParam(name = "storeNum", required = false) int storeNum
            			) throws Exception {
		
		boolean result = true;

		int memberNum = (int) session.getAttribute("memberNum");	

		result = alarmService.deleteAlarm(memberNum,storeNum);
			
		
		return result;
	}
	
	
	
}