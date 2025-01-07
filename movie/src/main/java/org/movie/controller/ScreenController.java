package org.movie.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.movie.model.Pagination;
import org.movie.model.ScreenDTO;
import org.movie.service.ScreenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value ={"/Screen/*"})
public class ScreenController {
	
	@Autowired
	private ScreenService service;
	
	@Autowired
	private ScreenService ScreenService;
	
	//�떎�떆媛� �닚�쐞 api
	@RequestMapping("api")
		public String api(Model model) {
			
			MovieAPI api = new MovieAPI();
			 
	        // API �슂泥�
	        ArrayList apilist = api.requestAPI();
	        
	       model.addAttribute("api",apilist);
	        
			return "Screen/api";
		}
	
	
	//DB�쓽 �쁺�솕 LIST
	@RequestMapping("list")
	public String main(Model model,@RequestParam(defaultValue="1") int curPage) {
		
		MovieAPI api = new MovieAPI();
		int count = service.getScreenCount();
		System.out.println(count);
        // API �슂泥�
        ArrayList apilist = api.requestAPI();
        
       model.addAttribute("api",apilist);
       
	    List<ScreenDTO> list = null;
	    //list = service.listData();		
	    
		Pagination pagination = new Pagination(count,curPage);
		list = service.listData(pagination.getStartIndex());
		model.addAttribute("pagination",pagination);
        model.addAttribute("list",list);
		return "Screen/list";
	}
	
	
	//�쁺�솕 �긽�꽭 �럹�씠吏�

	@RequestMapping("detail")
	public String detail(HttpSession session , Model model,int no) {
		model.addAttribute("dto", service.detailScreenData(no));
		return "Screen/detail";
	}
	
}






