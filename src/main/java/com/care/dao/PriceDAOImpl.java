package com.care.dao;


import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.care.dto.BoardDTO;
import com.care.dto.Criteria;
import com.care.dto.PriceDTO;



@Repository
public class PriceDAOImpl implements PriceDAO{

	@Inject
	private SqlSession sqlSession;
	
	
	
	
	// Save Price Total
	@Override
	public void savePrice(PriceDTO priceDTO) throws Exception {

		sqlSession.insert("priceMapper.savePrice", priceDTO);

	}


	// Whole Price List
	@Override
	public List<PriceDTO> plist(String userId) throws Exception {
		return sqlSession.selectList("priceMapper.plist", userId);
	}
	
	
	// Count
	@Override
	public int listCount() throws Exception{
		return sqlSession.selectOne("priceMapper.listCount");
	}
	
	// View Price Page
	@Override
	public PriceDTO viewPrice(int pno) throws Exception {
			
		return sqlSession.selectOne("priceMapper.viewPrice", pno);
	}
	
	
		// Delete Saved Price
		@Override
		public void deletePrice(int pno) throws Exception {
			
			sqlSession.delete("priceMapper.deletePrice", pno);
		}
	
	
	
	

}