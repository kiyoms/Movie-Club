package org.movie.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.movie.model.MemberDTO;
import org.movie.service.MemberService;
import org.movie.service.ScreenService;
import org.rosuda.REngine.REXP;
import org.rosuda.REngine.RList;
import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

@RequestMapping(value ={"/member/*", "/menu/*", "/manager/*"})
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private ScreenService service1;
	
	@RequestMapping("main")
	public String main() {
		return "member/main";
	}
	
	@RequestMapping("inputForm")
	public String inputForm() {
		return "member/inputForm";
	}
	
	@RequestMapping("inputPro")
	public String inputPro(MemberDTO dto) {
		service.insertMember(dto);
		return "member/inputPro";
	}
	
	@RequestMapping("confirmId")
	public String confirmId(String id , Model model) {
		model.addAttribute("result", service.confirmId(id));
		model.addAttribute("id", id);
		return "member/confirmId";
	}
	
	@RequestMapping("loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	
	@RequestMapping("loginPro")
	public String loginPro(MemberDTO dto , Model model) {
		model.addAttribute("result", service.userCheck(dto));
		return "member/loginPro";
	}
	
	@RequestMapping("logout")
	public String aopLogout() {
		return "member/logout";
	}
	@RequestMapping("modify")
	public String aopModify(HttpSession session , Model model) {
		String memId = (String)session.getAttribute("memId");
		model.addAttribute("dto", service.getMember(memId));
		return "member/modify";
	}
	
	@RequestMapping("modifyForm")
	public String aopModifyForm(HttpSession session , Model model) {
		String memId = (String)session.getAttribute("memId");
		model.addAttribute("dto", service.getMember(memId));
		return "member/modifyForm";
	}

	@RequestMapping("modifyPro")
	public String aopModifyPro(MemberDTO dto) {
		service.updateMember(dto);
		return "member/modifyPro";
	}
	
	@RequestMapping("deleteForm")
	public String aopDeleteForm() {
		return "member/deleteForm";
	}
	@RequestMapping("deletePro")
	public String aopDeletePro(MemberDTO dto,String pw,HttpSession session,Model model) {
		String memId = (String)session.getAttribute("memId");
		dto.setId(memId);
		
		int result = service.userCheck(dto);
		if(result == 1) {
			service.deleteMember(memId, pw);
		}
		model.addAttribute("result", result);
		return "member/deletePro";
	}
	
	@RequestMapping("mainHome")
	   public String mainHome(Model model,@RequestParam(defaultValue="1") int curPage) throws Exception {
     
		MovieAPI api = new MovieAPI();
		int count = service1.getScreenCount();
		System.out.println(count);

     ArrayList apilist = api.requestAPI();
     
    model.addAttribute("api",apilist);   		
		
	      RConnection rc = new RConnection();      
	       int endContent = curPage*25;
	       int startContent = endContent - 24;	    
	       rc.assign("test",curPage+"");	   
	       rc.eval("library(rvest)");
	       rc.eval("library(httr)");
	       rc.eval("url <- 'https://entertain.naver.com/ranking'");
	       rc.eval("title <- NULL");
	       
	       rc.eval( " text <- read_html(url); "
	            + " nodes1 <- html_nodes(text ,'div.rank_lst > ul > li > a'); "
	            + " title <- html_text(nodes1); "
	            + " title <- gsub('^[0-9]|10' ,'', title); "
	            + " title <- gsub('[[:punct:]]' ,'', title); "
	            
           +  "click <- read_html('https://entertain.naver.com/ranking'); " 
	            +  "link <- html_nodes(click , 'div.rank_lst > ul > li > a');"
	            +  "link <- html_attr(link,'href');"
	            +  "spam <- read_html('https://entertain.naver.com/ranking');"
	            +  "num <- html_nodes(spam , ' span.blind');"
	            +  "num <- num[5:14];"
	            +  "num <- gsub('[A-z]' ,'', num);"
	            +  "num <- gsub('[[:punct:]]' ,'', num);"	            
	            + " movie <- data.frame(title , link , num); "
	            );
	              
	         System.out.println(startContent);
	         System.out.println(endContent);
	       REXP x = rc.eval("movie <- data.frame(movie , stringsAsFactors=F)");

	       RList list = x.asList();
	      
	       String [] title = list.at(0).asStrings();
	       String [] link = list.at(1).asStrings();
	       String [] num = list.at(2).asStrings();
	      
	       model.addAttribute("title", title);

	       model.addAttribute("link", link);
	       
	       model.addAttribute("num", num);
	      
	       rc.close();
	       return "menu/mainHome";
	}
	
	@RequestMapping("sitemap")
	public String sitemap() {
		return "menu/sitemap";
	}
}










