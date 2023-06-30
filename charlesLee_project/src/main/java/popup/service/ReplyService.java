package popup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.mapper.ReplyMapper;

@Service
public class ReplyService {

	@Autowired
	ReplyMapper replyMapper;
}
