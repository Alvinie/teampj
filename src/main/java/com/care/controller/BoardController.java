package com.care.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.dto.BoardDTO;
import com.care.dto.Criteria;
import com.care.dto.PageMaker;
import com.care.dto.ReplyDTO;
import com.care.service.BoardService;
import com.care.service.ReplyService;



@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardService service;
	
	@Inject
	ReplyService replyService;
	
	// 게시판 글 작성 화면
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("writeView");
	}
	
	
	
	
	
	
	
	// 게시판 글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(BoardDTO boardDTO) throws Exception{
		logger.info("write");
		service.write(boardDTO);
		return "redirect:/board/list";
	}
	
	
	
	
	
	
	
	
	// 게시판 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model, Criteria cri) throws Exception{
		logger.info("list");
		model.addAttribute("list", service.list(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount());
		model.addAttribute("pageMaker", pageMaker);
		return "board/list";
		
	}
	
	
	
	// 게시판 조회
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(BoardDTO boardDTO, Model model) throws Exception{
		logger.info("read");
		model.addAttribute("read", service.read(boardDTO.getBno()));
		
		List<ReplyDTO> replyList = replyService.readReply(boardDTO.getBno());
		model.addAttribute("replyList", replyList);
		
		return "board/readView";
	}
	
	// 게시판 수정뷰
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(BoardDTO boardDTO, Model model) throws Exception{
		logger.info("updateView");
		
		model.addAttribute("update", service.read(boardDTO.getBno()));
		
		return "board/updateView";
	}
	
	// 게시판 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(BoardDTO boardDTO) throws Exception{
		logger.info("update");
		
		service.update(boardDTO);
		
		return "redirect:/board/list";
	}

	// 게시판 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(BoardDTO boardDTO) throws Exception{
		logger.info("delete");
		
		service.delete(boardDTO.getBno());
		
		return "redirect:/board/list";
	}
	
	
	//댓글 작성
		@RequestMapping(value="/replyWrite", method = RequestMethod.POST)
		public String replyWrite(ReplyDTO dto, RedirectAttributes rttr) throws Exception {
			logger.info("replyWrite");
			System.out.println("controller");
			replyService.writeReply(dto);
			
			rttr.addAttribute("bno", dto.getBno());

			
			return "redirect:/board/readView";
		}
		
		
		//댓글 수정 GET
		@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
		public String replyUpdateView(ReplyDTO dto, Model model) throws Exception {
			logger.info("replyWrite");
			
			model.addAttribute("replyUpdate", replyService.selectReply(dto.getRno()));

			
			return "board/replyUpdateView";
		}
		
		//댓글 수정 POST
		@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
		public String replyUpdate(ReplyDTO dto, RedirectAttributes rttr) throws Exception {
			logger.info("reply Write");
			
			replyService.updateReply(dto);
			
			rttr.addAttribute("bno", dto.getBno());

			
			return "redirect:/board/readView";
		}
		
		
		//댓글 삭제 GET
		@RequestMapping(value="/replyDeleteView", method = RequestMethod.GET)
		public String replyDeleteView(ReplyDTO dto,Model model) throws Exception {
			logger.info("replyWrite");
			
			model.addAttribute("replyDelete", replyService.selectReply(dto.getRno()));

			

			return "board/replyDeleteView";
		}
		
		//댓글 삭제
		@RequestMapping(value="/replyDelete", method = RequestMethod.POST)
		public String replyDelete(ReplyDTO dto, RedirectAttributes rttr) throws Exception {
			logger.info("replyWrite");
			
			replyService.deleteReply(dto);
			
			rttr.addAttribute("bno", dto.getBno());

			
			return "redirect:/board/readView";
		}
	
}