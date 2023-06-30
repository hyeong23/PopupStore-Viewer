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
	private int picture_num;
	private String picture_path;
	private String picture_name;
	private String picture_original_name;
	private int picture_size;
	private Date picture_date;
}
