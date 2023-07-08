package popup.vo;

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
public class StoreVo {
	private int storeNum;
	private int memberNum;
	private String storeTitle;
	private String storeIntro;
	private String storeBody;
	private Date storeStart;
	private Date storeEnd;
	private int storeFavorite;				// 파일 등록 일자
	private String storeLoc; 			// 파일 크기
	private String storeSite;
	private int storeCount;
	private int storeStatus;
	private String memberCompanyName;
	private String memberNickname;
}