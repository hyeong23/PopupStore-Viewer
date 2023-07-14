package popup.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Reply;
import popup.mapper.ReplyMapper;
import popup.vo.ReplyVo;

@Service
public class ReplyService {

	@Autowired
	ReplyMapper replyMapper;
	
	public boolean insertReply(Reply reply) throws SQLException, Exception {
		boolean result = false;
		int res = replyMapper.insertReply(reply);
		if(res != 0) {
			result = true;
		} else {
			throw new Exception();
		}
			
		return result;
	}

	public List<ReplyVo> getReplyList() {
		return replyMapper.getReplyList();
	}
}
