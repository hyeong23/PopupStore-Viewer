package popup.mapper;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Alarm;

@Mapper
public interface AlarmMapper {

	boolean insertAlarm(int memberNum,int storeNum,String alarmContent,Date alarmTime) throws SQLException;

	boolean deleteAlarm(int memberNum, int storeNum) throws SQLException;

	List<Integer> getStoreByAlarm(int customerNum)throws Exception;

	List<Alarm> getAlarm(int memberNum);

}
