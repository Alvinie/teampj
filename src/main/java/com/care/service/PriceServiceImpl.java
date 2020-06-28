package com.care.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.care.dao.PriceDAO;
import com.care.dto.BoardDTO;
import com.care.dto.Criteria;
import com.care.dto.PriceDTO;

@Service
public class PriceServiceImpl implements PriceService{

	@Inject
	private PriceDAO dao;

	
	// Save New Price Info
	@Override
	public void savePrice(PriceDTO priceDTO) throws Exception {
		dao.savePrice(priceDTO);
	}

	
	// Display the Whole List of Saved Price Infos
	@Override
	public List<PriceDTO> plist(String userId) throws Exception {
		return dao.plist(userId);
	}

	// Count Number of Saved Price Pages
	@Override
	public int listCount() throws Exception {
		return dao.listCount();
	}

	
	// View Selected Price Page Info
	@Override
	public PriceDTO viewPrice(int pno) throws Exception {
		return dao.viewPrice(pno);
	}

	
	// Delete Selected Price Page
	@Override
	public void deletePrice(int pno) throws Exception {
		dao.deletePrice(pno);
	}
	
	 
	

}
