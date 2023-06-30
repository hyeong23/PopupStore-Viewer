package popup.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Store {
	private int store_num;
	private String store_title;
	private String store_intro;
	private String store_body;
	private Date store_start;
	private Date store_end;
	private int store_favorite;				// 파일 등록 일자
	private String store_loc; 			// 파일 크기
	private String store_site;
	private String store_count;
	private int store_status;

}