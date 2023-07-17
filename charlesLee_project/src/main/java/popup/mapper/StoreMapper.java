package popup.mapper;


import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import popup.dto.Store;
import popup.vo.StoreVo;

@Mapper
public interface StoreMapper {

	public List<StoreVo> getStoreList() throws Exception;

	public int insertStore(Store store) throws Exception;

	public int getMaxStoreNum() throws Exception;

	public List<Integer> getStoreBySmallDate() throws SQLException;

	public List<Integer> getStoreByBigDate() throws SQLException;

	public List<Integer> getStoreByCompanyName(@Param("memberCompanyName") String[] memberCompanyName) throws Exception;

	public List<Integer> getStoreByStoreTitle(@Param("storeTitle") String[] storeTitle) throws Exception;

	public List<Integer> getStoreByLoc(String storeLoc) throws Exception;

}
