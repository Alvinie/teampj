package com.care.controller;

import java.lang.reflect.Member;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.dto.MemberDTO;
import com.care.service.MemberService;


@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	// Register Get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// Register Post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberDTO dto, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post register");
		HttpSession session = req.getSession();
		MemberDTO regiDupe = service.regiDupe(dto);
		if(regiDupe == null) {
			session.setAttribute("reg", regiDupe);
			service.register(dto);
			System.out.println(regiDupe + "if");
			return "redirect:/";
		} else if(regiDupe != null){
			session.setAttribute("reg", null);
			rttr.addFlashAttribute("alert", false);
			System.out.println(regiDupe + "else");
			return "redirect:/member/register";
		}
		
		return null;
	}
	
	// Login Post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberDTO dto, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
		
		HttpSession session = req.getSession();
		MemberDTO login = service.login(dto);
		
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("member", login);
			
		}
		
		return "css/index";
	}
	
	// Logout
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	
	
	// Update Member Info Editing Page
	@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		
		return "member/memberUpdateView";
	}

	
	// Update Member Info Redirecting Path
	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(MemberDTO dto, HttpSession session) throws Exception{
		
		service.memberUpdate(dto);
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	
	
	// Delete Account GET
		@RequestMapping(value="/memberDeleteView", method = RequestMethod.GET)
		public String memberDeleteView() throws Exception{
			return "member/memberDeleteView";
		}
		
		
		
	// Delete Account POST
		@RequestMapping(value="/memberDelete", method = RequestMethod.POST)
		public String memberDelete(MemberDTO dto, HttpSession session, RedirectAttributes rttr) throws Exception{
			

			MemberDTO member = (MemberDTO) session.getAttribute("member");

			String sessionPass = member.getUserPass();

			String voPass = dto.getUserPass();
			
			if(!(sessionPass.equals(voPass))) {
				rttr.addFlashAttribute("msg", false);
				return "redirect:/member/memberDeleteView";
			}
			service.memberDelete(dto);
			session.invalidate();
			return "redirect:/";
		}
	
	
	
		
		
		
		
		
	
}






