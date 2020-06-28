package com.care.service;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.care.dao.BoardDAO;
import com.care.dto.BoardDTO;
import com.care.dto.Criteria;


@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	
	
	
	
	// 게시글 작성
	@Override
	public void write(BoardDTO boardDTO) throws Exception {
		dao.write(boardDTO);
	}
	
	
	
	
	
	// 게시물 목록 조회
	@Override
	public List<BoardDTO> list(Criteria cri) throws Exception {

		return dao.list(cri);
	}
	
	
	// 게시물 총 갯수
	@Override
	public int listCount() throws Exception {
		return dao.listCount();
	}
	
	
	// 게시물  조회
	@Override
	public BoardDTO read(int bno) throws Exception {

		return dao.read(bno);
	}
	
	// 게시물 수정
	@Override
	public void update(BoardDTO boardDTO) throws Exception {

		dao.update(boardDTO);
	}

	
	//게시물 삭제
	@Override
	public void delete(int bno) throws Exception {
		
		dao.delete(bno);
	}
	
	
	
	
	
	
	
	
	

}