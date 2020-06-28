package com.care.dao;

import java.util.List;

import com.care.dto.ReplyDTO;

public interface ReplyDAO {

	// 댓글 조회
	public List<ReplyDTO> readReply(int bno) throws Exception;
	
	
	// 댓글 작성
	public void writeReply(ReplyDTO dto) throws Exception;
	
	
	// 댓글 수정
	public void updateReply(ReplyDTO dto) throws Exception;
	
	
	// 댓글 삭제
	public void deleteReply(ReplyDTO dto) throws Exception;
	
	
	// 선택 댓글 조회
	public ReplyDTO selectReply(int rno) throws Exception;
	
	
	
	
}





















