package com.care.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cars/*")
public class CarsController {

	
	@RequestMapping("/estimate")
	public String estimate(Model model) {
		return "cars/estimate_porter2";
	}

	@RequestMapping("/estimate_avante")
	public String estimate_avante(Model model) {
		return "cars/estimate_avante";
	}
	@RequestMapping("/estimate_grandstarex_limousine")
	public String estimate_grandstarex_limousine(Model model) {
		return "cars/estimate_grandstarex_limousine";
	}
	@RequestMapping("/estimate_grandstarex")
	public String estimate_grandstarex(Model model) {
		return "cars/estimate_grandstarex";
	}
	@RequestMapping("/estimate_grangeur")
	public String estimate_grangeur(Model model) {
		return "cars/estimate_grangeur";
	}
	@RequestMapping("/estimate_i30")
	public String estimate_i30(Model model) {
		return "cars/estimate_i30";
	}
	@RequestMapping("/estimate_kona")
	public String estimate_kona(Model model) {
		return "cars/estimate_kona";
	}
	@RequestMapping("/estimate_nexo")
	public String estimate_nexo(Model model) {
		return "cars/estimate_nexo";
	}
	@RequestMapping("/estimate_palisade")
	public String estimate_palisade(Model model) {
		return "cars/estimate_palisade";
	}
	@RequestMapping("/estimate_porter2")
	public String estimate_porter2(Model model) {
		return "cars/estimate_porter2";
	}
	@RequestMapping("/estimate_santafe")
	public String estimate_santafe(Model model) {
		return "cars/estimate_santafe";
	}
	@RequestMapping("/estimate_sonata")
	public String estimate_sonata(Model model) {
		return "cars/estimate_sonata";
	}
	@RequestMapping("/estimate_tucson")
	public String estimate_tucson(Model model) {
		return "cars/estimate_tucson";
	}
	@RequestMapping("/estimate_veloster")
	public String estimate_veloster(Model model) {
		return "cars/estimate_veloster";
	}
	@RequestMapping("/estimate_venue")
	public String estimate_venue(Model model) {
		return "cars/estimate_venue";
	}
	
	
}
