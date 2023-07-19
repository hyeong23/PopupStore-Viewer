package popup.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Picture;

@Mapper
public interface PictureMapper {

	int insertPicture(Picture pictureFile) throws Exception;
	
	int updatePicture(Picture pictureFile) throws Exception;

	List<Picture> getPictureByStoreNum(int storeNum);



}
