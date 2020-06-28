package com.care.service;

import java.util.List;

import com.care.dto.BoardDTO;
import com.care.dto.Criteria;

public interface BoardService {
	
	
	
	
	// 게시글 작성
	public void write(BoardDTO boardDTO) throws Exception;
		
	
	
	
	
		
	// 게시물 목록 조회
	public List<BoardDTO> list(Criteria cri) throws Exception;
		
		
	// 게시물 총 갯수
	public int listCount() throws Exception;
	
	
	// 게시물 목록 조회
	public BoardDTO read(int bno) throws Exception;
		
		
	// 게시물 수정
	public void update(BoardDTO boardDTO) throws Exception;
	
	// 게시물 삭제
	public void delete(int bno) throws Exception;
		
		
		
		
		
		
	}

