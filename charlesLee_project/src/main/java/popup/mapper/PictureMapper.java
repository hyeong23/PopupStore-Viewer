package popup.mapper;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Picture;

@Mapper
public interface PictureMapper {

	int insertPicture(Picture pictureFile) throws Exception;

}
