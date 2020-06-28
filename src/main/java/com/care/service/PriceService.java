package com.care.service;

import java.util.List;

import com.care.dto.BoardDTO;
import com.care.dto.Criteria;
import com.care.dto.PriceDTO;

public interface PriceService {
	
	
	
	// Save Price
	public void savePrice(PriceDTO priceDTO) throws Exception;
	
	
	// Whole Price List
	public List<PriceDTO> plist(String userId) throws Exception;
	
	
	// Count # of Price Posts
	public int listCount() throws Exception;
	
	
	// View Selected Price Page
	public PriceDTO viewPrice(int pno) throws Exception;

	
	//Delete Saved Price
	public void deletePrice(int pno) throws Exception;
	
}
