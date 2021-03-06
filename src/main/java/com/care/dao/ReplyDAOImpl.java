package com.care.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.care.dto.ReplyDTO;

@Repository
public class ReplyDAOImpl implements ReplyDAO{
	
	@Inject SqlSession sql;
	
	
	
	
	// 댓글 조회
	@Override
	public List<ReplyDTO> readReply(int bno) throws Exception {
		
		return sql.selectList("replyMapper.readReply", bno);
	}

	// 댓글 작성
	@Override
	public void writeReply(ReplyDTO dto) throws Exception {
		sql.insert("replyMapper.writeReply", dto);
		
	}

	
	// 댓글 수정
	@Override
	public void updateReply(ReplyDTO dto) throws Exception{
		sql.update("replyMapper.updateReply", dto);
	}
	
	// 댓글 삭제
	@Override
	public void deleteReply(ReplyDTO dto) throws Exception{
		sql.delete("replyMapper.deleteReply", dto);
	}
	
	//선택 댓글 조회
	@Override
	public ReplyDTO selectReply(int rno) throws Exception{
		return sql.selectOne("replyMapper.selectReply", rno);
	}
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
