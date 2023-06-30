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
public class Announcement {
	private int announcement_num;
	private int member_num;
	private String announcement_title;
	private String announcement_body;
	private Date announcement_time;
	private int announcement_count;
}
