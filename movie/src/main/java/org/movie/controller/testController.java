package org.movie.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/bootstrab/*")
public class testController{
	
	@RequestMapping("index")
	public String main1(Model model) {
		return "bootstrab/index";
	}
	@RequestMapping("login")
	public String main2(Model model) {
		return "bootstrab/login";
	}
	@RequestMapping("movie")
	public String main3(Model model) {
		return "bootstrab/movie";
	}
	@RequestMapping("register")
	public String main4(Model model) {
		return "bootstrab/register";
	}
	@RequestMapping("single")
	public String main5(Model model) {
		return "bootstrab/single";
	}
	
	
}
