package com.care.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("css/*")
public class CssController {

	@RequestMapping("/index")
	public String index() {
		return "css/index";
	}

	@RequestMapping("/model")
	public String model(Model model) {
		return "css/model";
	}
	
	
	@RequestMapping("/idea")
	public String idea(Model model) {
		return "css/idea";
	}
	
	@RequestMapping("/idea2")
	public String idea2(Model model) {
		return "css/idea2";
	}
	
	@RequestMapping("/idea3")
	public String idea3(Model model) {
		return "css/idea3";
	}
	
	@RequestMapping("/avdetail")
	public String avdetail(Model model) {
		return "css/avdetail";
		
	}
	@RequestMapping("/grdetail")
	public String grdetail(Model model) {
		return "css/grdetail";
		
	}
	@RequestMapping("/bldetail")
	public String bldetail(Model model) {
		return "css/bldetail";
		
	}
	@RequestMapping("/sndetail")
	public String sndetail(Model model) {
		return "css/sndetail";
		
	}
	@RequestMapping("/pldetail")
	public String pldetail(Model model) {
		return "css/pldetail";
		
	}
	@RequestMapping("/i3detail")
	public String i3detail(Model model) {
		return "css/i3detail";
	}
	@RequestMapping("/vndetail")
	public String vndetail(Model model) {
		return "css/vndetail";
	}
	@RequestMapping("/kndetail")
	public String kndetail(Model model) {
		return "css/kndetail";
	}
	@RequestMapping("/tsdetail")
	public String tsdetail(Model model) {
		return "css/tsdetail";
	}
	@RequestMapping("/stdetail")
	public String stdetail(Model model) {
		return "css/stdetail";
	}
	@RequestMapping("/nxdetail")
	public String nxdetail(Model model) {
		return "css/nxdetail";
	}
	@RequestMapping("/ptdetail")
	public String ptdetail(Model model) {
		return "css/ptdetail";
	}
	@RequestMapping("/gsdetail")
	public String gsdetail(Model model) {
		return "css/gsdetail";
	}
	@RequestMapping("/gsldetail")
	public String gsldetail(Model model) {
		return "css/gsldetail";
	}

	
	
}
