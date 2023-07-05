package popup.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString 
public class Picture {
	private int pictureNum;
	private int storeNum;
	private String picturePath;
	private String pictureName;
	private String pictureOriginalName;
	private int pictureSize;
	private Date pictureDate;
}
