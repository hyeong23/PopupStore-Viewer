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
public class Alarm {
	private int alam_num;
	private int member_num;
	private int store_num;
	private String alam_content;
	private int alam_read;
	private Date alam_time;
	private Date alam_checked_time;
	private char alam_status;
}
