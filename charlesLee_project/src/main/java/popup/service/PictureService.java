package popup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.mapper.PictureMapper;

@Service
public class PictureService {

	@Autowired
	PictureMapper pictureMapper;
}
