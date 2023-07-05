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
	private int alamNum;
	private int memberNum;
	private int storeNum;
	private String alamContent;
	private int alamRead;
	private Date alamTime;
	private Date alamCheckedTime;
	private char alamStatus;
}
