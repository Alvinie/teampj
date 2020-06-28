package com.care.controller;


import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.care.dto.Criteria;
import com.care.dto.PageMaker;
import com.care.dto.PriceDTO;
import com.care.service.BoardService;
import com.care.service.PriceService;


@Controller
@RequestMapping("/prices/*")
public class PriceController {

	private static final Logger logger = LoggerFactory.getLogger(PriceController.class);
	
	
	@Inject
	PriceService service;
	


	
	
	// saveView
	@RequestMapping(value = "/priceView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("priceView");
		
	}
	
	
	//save
	@RequestMapping(value = "/savePrice", method = RequestMethod.POST)
	public String savePrice(PriceDTO priceDTO) throws Exception{
		logger.info("savePrice");
		System.out.println("test1");
		service.savePrice(priceDTO);
		System.out.println("test2");
		return "redirect:../css/model";
	}
	
	
	// 게시판 목록 조회
	@RequestMapping(value = "/plist", method = RequestMethod.GET)
	public String list(Model model, String userId) throws Exception{
		logger.info("plist");
		
		model.addAttribute("plist", service.plist(userId));
		

		
		return "prices/plist";
		
	}
	
	
	// view
	@RequestMapping(value = "/viewPrice", method = RequestMethod.GET)
	public String viewPrice(PriceDTO priceDTO, Model model) throws Exception{
		logger.info("viewPrice");
		model.addAttribute("read", service.viewPrice(priceDTO.getPno()));
		
	
		return "prices/viewPrice";
	}
	
	
	
	//delete 
	@RequestMapping(value = "/deletePrice", method = RequestMethod.POST)
	public String deletePrice(PriceDTO priceDTO) throws Exception{
		logger.info("deletePrice");
		
		service.deletePrice(priceDTO.getPno());
		
		return "redirect:/prices/plist";
	}
	
	
}
