package com.care.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.care.dto.BoardDTO;
import com.care.dto.Criteria;


@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sqlSession;
	
	
	
	
	
	// 게시글 작성
	@Override
	public void write(BoardDTO boardDTO) throws Exception {
		sqlSession.insert("boardMapper.write", boardDTO);
		
	}
	
	
	
	
	
	
	// 게시물 목록 조회
	@Override
	public List<BoardDTO> list(Criteria cri) throws Exception {
		return sqlSession.selectList("boardMapper.list", cri);
	}
	
	
	// 게시물 총 갯수
	@Override
	public int listCount() throws Exception{
		return sqlSession.selectOne("boardMapper.listCount");
	}
	
	// 게시물 조회
	@Override
	public BoardDTO read(int bno) throws Exception {
			
		return sqlSession.selectOne("boardMapper.read", bno);
	}
	
	// 게시물 수정
	@Override
	public void update(BoardDTO boardDTO) throws Exception {
		
		sqlSession.update("boardMapper.update", boardDTO);
	}

	// 게시물 삭제
	@Override
	public void delete(int bno) throws Exception {
		
		sqlSession.delete("boardMapper.delete", bno);
	}
	
	
	
	
	
	
	
	

}