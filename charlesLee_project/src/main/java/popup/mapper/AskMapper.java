package popup.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Ask;

@Mapper
public interface AskMapper {
	
	// List
		public List<Ask> getAllAsk();
		
	// insert - Ask
	public int insertAsk(Ask ask) throws SQLException;

}
