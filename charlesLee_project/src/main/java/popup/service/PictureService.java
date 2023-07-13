package popup.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import popup.dto.Picture;
import popup.mapper.PictureMapper;

@Service
public class PictureService {

	@Autowired
	PictureMapper pictureMapper;

	public boolean insertPicture(int storeNum, MultipartFile picture) throws Exception {
		boolean result = false;
		
		if(picture == null) {
			throw new Exception("파일 전달 오류 발생");
		}
		
		String picturePath = "charlesLee_project/src/main/resources/static/picture";
		String pictureOriginalName = picture.getOriginalFilename();
		UUID uuid = UUID.randomUUID();
		String pictureName = uuid.toString() + "_" + pictureOriginalName;
		long pictureSize = picture.getSize();
		
		Picture pictureFile = Picture.builder().storeNum(storeNum)
											   .picturePath(picturePath)
											   .pictureName(pictureName)
											   .pictureOriginalName(pictureOriginalName)
											   .pictureSize(pictureSize)
											   .build();
											
		int res = pictureMapper.insertPicture(pictureFile);
		
		if(res != 0) {
			
			picture.transferTo(new File(picturePath + "/" + pictureName)); 
			
			result = true;
		} else {
			throw new Exception("부서 생성 실패");
		}
		
		
		return result;
	}

	public List<Picture> getPictureByStoreNum(int storeNum) {
		return pictureMapper.getPictureByStoreNum(storeNum);
	}
}
