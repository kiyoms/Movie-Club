package org.movie.controller;

import java.util.ArrayList;
import java.util.List;


import org.movie.service.MovieNewsService;
import org.rosuda.REngine.REXP;
import org.rosuda.REngine.RList;
import org.movie.model.Pagination;
import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

@RequestMapping("/movienews/*")
public class MovieNewsController {
	
	@Autowired
	private MovieNewsService service;
	
	@RequestMapping("main")
	   public String main(Model model,@RequestParam(defaultValue="1") int curPage) throws Exception {
	               
	      RConnection rc = new RConnection();      
	       int endContent = curPage*25;
	       int startContent = endContent - 24;	    
	       rc.assign("test",curPage+"");	   
	       rc.eval("library(rvest)");
	       rc.eval("library(httr)");
	       rc.eval("url <- 'https://entertain.naver.com/movie#date=2022-07-20&page=3'");
	       rc.eval("title <- NULL");
	       rc.eval("image <- NULL");
	       
	       rc.eval( " text <- read_html(url); "
	            + " nodes1 <- html_nodes(text ,'.tit'); "
	            + " title <- html_text(nodes1); "
	            + " nodes2 <- html_nodes(text ,'div.tit_area > p'); "   
	            + " content <- html_text(nodes2); " 
	            
	            + " html <- read_html('https://entertain.naver.com/movie#date=2022-07-20&page=3'); "
	            + " imgTag <- html_nodes(html , 'img'); "
	            + " imgSrc <- html_attr(imgTag , 'src'); "
	            
	            + " image <- imgSrc[" + startContent+ ":" + endContent  + "]; "   
	            
                +  "click <- read_html('https://entertain.naver.com/movie#date=2022-07-20&page=3'); " 
	            +  "link <- html_nodes(click , 'div.tit_area > a.tit');"
	            +  "link <- html_attr(link,'href');"
	            	            	            	            	 	            
	 	        + " text1 <- read_html('https://entertain.naver.com/ranking'); "
	 	        + " nodes3 <- html_nodes(text1 ,'div.rank_lst > ul > li > a'); "
	 	        + " title1 <- html_text(nodes3); "
	 	        + " title1 <- gsub('^[0-9]|10' ,'', title1); "
	 	        + " title1 <- gsub('[[:punct:]]' ,'', title1); "
	 	            
	            +  "click1 <- read_html('https://entertain.naver.com/ranking'); " 
	 	        +  "link1 <- html_nodes(click1 , 'div.rank_lst > ul > li > a');"
	 	        +  "link1 <- html_attr(link1,'href');"
	 	        
	 	        +  "spam <- read_html('https://entertain.naver.com/ranking');"
	 	        +  "num <- html_nodes(spam , ' span.blind');"
	 	        +  "num <- num[5:14];"
	 	        +  "num <- gsub('[A-z]' ,'', num);"
	 	        +  "num <- gsub('[[:punct:]]' ,'', num);"
	 	                        	 	            
                + " movie1 <- data.frame(title , content , image , link ); "
                + " movie2 <- data.frame(title1 , link1 , num  ); "    
	            );
	              
	         System.out.println(startContent);
	         System.out.println(endContent);
	       REXP x = rc.eval("movie1 <- data.frame(movie1 , stringsAsFactors=F)");
	       REXP x1 = rc.eval("movie2 <- data.frame(movie2 , stringsAsFactors=F)");

	       RList list = x.asList();
	       RList list1 = x1.asList();
	      
	       String [] title = list.at(0).asStrings();
	       String [] content = list.at(1).asStrings();
	       String [] image = list.at(2).asStrings();
	       String [] link = list.at(3).asStrings();
	       
	       String [] title1 = list1.at(0).asStrings();
	       String [] link1 = list1.at(1).asStrings();
	       String [] num = list1.at(2).asStrings();
	      
	       model.addAttribute("title", title);
	       model.addAttribute("content", content);
	       model.addAttribute("image", image);
	       model.addAttribute("link", link);
	       model.addAttribute("title1", title1);
	       model.addAttribute("link1", link1);
	       model.addAttribute("num", num);
	      
	       rc.close();
	       return "movienews/main";
	    }
	  
	  
	  @RequestMapping("news")
	   public String news(Model model,@RequestParam(defaultValue="1") int curPage) throws Exception {
	               
	      RConnection rc = new RConnection();      
	       int endContent = curPage*25;
	       int startContent = endContent - 24;	    
	       rc.assign("test",curPage+"");	   
	       rc.eval("library(rvest)");
	       rc.eval("library(httr)");
	       rc.eval("url <- 'https://entertain.naver.com/movie#date=2022-07-20&page=3'");
	       rc.eval("title <- NULL");
	       rc.eval("image <- NULL");
	       //rc.assign("endContent",curPage*25);
	       //rc.eval("startContent <- endContent-24");
	       rc.eval( " text <- read_html(url); "
	            + " nodes1 <- html_nodes(text ,'.tit'); "
	            + " title <- html_text(nodes1); "
	            + " nodes2 <- html_nodes(text ,'div.tit_area > p'); "   
	            + " content <- html_text(nodes2); " 
	            
	            + " html <- read_html('https://entertain.naver.com/movie#date=2022-07-20&page=3'); "
	            + " imgTag <- html_nodes(html , 'img'); "
	            + " imgSrc <- html_attr(imgTag , 'src'); "
	            //+  "image <- imgSrc[1:25]; " 
	            + " image <- imgSrc[" + startContent+ ":" + endContent  + "]; "   
	            
               +  "click <- read_html('https://entertain.naver.com/movie#date=2022-07-20&page=3'); " 
	            +  "link <- html_nodes(click , 'div.tit_area > a.tit');"
	            +  "link <- html_attr(link,'href');"
	            
	            + " movie <- data.frame(title , content , image , link); "
	            );
	              
	         System.out.println(startContent);
	         System.out.println(endContent);
	       REXP x = rc.eval("movie <- data.frame(movie , stringsAsFactors=F)");
	       

	       RList list = x.asList();
	      
	       String [] title = list.at(0).asStrings();
	       String [] content = list.at(1).asStrings();
	       String [] image = list.at(2).asStrings();
	       String [] link = list.at(3).asStrings();
	      
	       model.addAttribute("title", title);
	       model.addAttribute("content", content);
	       model.addAttribute("image", image);
	       model.addAttribute("link", link);
	      
	       rc.close();
	       return "movienews/news";
	    }
	  
	  
	  
	  @RequestMapping("popular")
	   public String popular(Model model,@RequestParam(defaultValue="1") int curPage) throws Exception {
	               
	      RConnection rc = new RConnection();      
	       int endContent = curPage*25;
	       int startContent = endContent - 24;	    
	       rc.assign("test",curPage+"");	   
	       rc.eval("library(rvest)");
	       rc.eval("library(httr)");
	       rc.eval("url <- 'https://entertain.naver.com/ranking'");
	       rc.eval("title <- NULL");
	       
	       //rc.assign("endContent",curPage*25);
	       //rc.eval("startContent <- endContent-24");
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
	       return "movienews/popular";
	    }
	   

	
}










