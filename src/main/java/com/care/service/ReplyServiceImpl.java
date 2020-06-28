package com.care.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.care.dao.ReplyDAO;
import com.care.dto.ReplyDTO;

@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Inject
	private ReplyDAO dao;
	
	@Override
	public List<ReplyDTO> readReply(int bno) throws Exception{
		return dao.readReply(bno);
	}

	@Override
	public void writeReply(ReplyDTO dto) throws Exception {
		dao.writeReply(dto);
		
	}

	@Override
	public void updateReply(ReplyDTO dto) throws Exception {
		dao.updateReply(dto);
		
	}

	@Override
	public void deleteReply(ReplyDTO dto) throws Exception {
		dao.deleteReply(dto);
	}

	@Override
	public ReplyDTO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}
}























