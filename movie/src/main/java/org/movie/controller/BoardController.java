package org.movie.controller;

import java.util.HashMap;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.movie.model.MemberDTO;
import org.movie.service.MemberService;
import org.movie.model.Pagination;
import org.movie.model.BoardDTO;
import org.movie.model.CommentDTO;
import org.movie.model.NoticeDTO;
import org.movie.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private MemberService memberserivce;
	
	@RequestMapping("list")
	public String list(Model model,@RequestParam(defaultValue="1") int curPage,HttpSession session,@RequestParam(defaultValue="")String searchname,@RequestParam(defaultValue="")String searchtext){	
		
	   int count = 0; //service.getArticleCount();
	   
	   System.out.println("searchname : " + searchname);
	   System.out.println("searchTEXT : " +searchtext);
	
		List<BoardDTO> searchtest = null;
	
	   
	
	    
	    List<NoticeDTO> noticeList = null;
	    List<BoardDTO> articleList = null;
	    noticeList = service.getNotice();
	    
	    String memId = (String)session.getAttribute("memId");
		MemberDTO id = memberserivce.getMember(memId);
		model.addAttribute("id",id);
	    model.addAttribute("notice",noticeList);
	    
	    
		if(searchname.equals("")) {
		count = service.getArticleCount();
		Pagination pagination = new Pagination(count,curPage);
		articleList = service.getArticles(pagination.getStartIndex());
	    model.addAttribute("list",articleList);
	    model.addAttribute("pagination",pagination);
	    System.out.println(pagination);
		}
		else if(searchname.equals("title")){
			count = service.getTitleCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getTitleSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 return "board/searchList";
		}
		else if(searchname.equals("subjcont")){
			count = service.getsubjcontCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getsubjcontSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 return "board/searchList";
		}
		else if(searchname.equals("writer")) {
			count = service.getWriterCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			searchtest = service.getWriterSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 return "board/searchList";
			 
		}
		else if(searchname.equals("content")) {
			count = service.getContentCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getContentSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 return "board/searchList";
		}
	   
	    
	    
		return "board/list";  //占쌜몌옙占쏙옙占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙
	}
	@RequestMapping("searchList")
	public String searchList(Model model,@RequestParam(defaultValue="1") int curPage,HttpSession session,@RequestParam(defaultValue="")String searchname,@RequestParam(defaultValue="")String searchtext){	
		
	   int count = 0;

	   	List<BoardDTO> searchtest = null;
	    List<NoticeDTO> noticeList = null;
	    
	    List<BoardDTO> articleList = null;
	    noticeList = service.getNotice();
	    
	    String memId = (String)session.getAttribute("memId");
		MemberDTO id = memberserivce.getMember(memId);
		model.addAttribute("id",id);
	    model.addAttribute("notice",noticeList);
	    
	    
		if(searchname.equals("")) {
		count = service.getArticleCount();
		Pagination pagination = new Pagination(count,curPage);
		articleList = service.getArticles(pagination.getStartIndex());
	    model.addAttribute("list",articleList);
	    model.addAttribute("pagination",pagination);
		 return "board/list";
		}
		else if(searchname.equals("title")){
			count = service.getTitleCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getTitleSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
		}
		else if(searchname.equals("subjcont")){
			count = service.getsubjcontCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getsubjcontSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
		}
		else if(searchname.equals("writer")) {
			count = service.getWriterCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			searchtest = service.getWriterSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 
		}
		else if(searchname.equals("content")) {
			count = service.getContentCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getContentSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
		}
	   
	    
	    
		return "board/searchList";  //占쌜몌옙占쏙옙占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙
	}
	
	@RequestMapping("informationSearchList")
	public String informationSearchList(Model model,@RequestParam(defaultValue="1") int curPage,HttpSession session,@RequestParam(defaultValue="")String searchname,@RequestParam(defaultValue="")String searchtext){	
		
	   int count = 0;

	   	List<BoardDTO> searchtest = null;
	    List<NoticeDTO> noticeList = null;
	    
	    List<BoardDTO> articleList = null;
	    noticeList = service.getNotice();
	    
	    String memId = (String)session.getAttribute("memId");
		MemberDTO id = memberserivce.getMember(memId);
		model.addAttribute("id",id);
	    model.addAttribute("notice",noticeList);
	    
	    
		if(searchname.equals("")) {
		count = service.getArticleCount();
		Pagination pagination = new Pagination(count,curPage);
		articleList = service.getArticles(pagination.getStartIndex());
	    model.addAttribute("list",articleList);
	    model.addAttribute("pagination",pagination);
	   
		 return "board/informationSearchList";
		}
		else if(searchname.equals("title")){
			count = service.getInformationTitleCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getInformationTitleSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
		}
		else if(searchname.equals("subjcont")){
			count = service.getInformationsubjcontCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getInformationsubjcontSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
		}
		else if(searchname.equals("writer")) {
			count = service.getInformationWriterCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			searchtest = service.getInformationWriterSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 
		}
		else if(searchname.equals("content")) {
			count = service.getInformationContentCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getInformationContentSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
		}
	   
	    
	    
		return "board/searchList";  //占쌜몌옙占쏙옙占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙
	}
	@RequestMapping("conceptList")
	public String conceptList(Model model,@RequestParam(defaultValue="1") int curPage,HttpSession session,@RequestParam(defaultValue="")String searchname,@RequestParam(defaultValue="")String searchtext){	
		
	   int count = 0; //service.getArticleCount();
	   
	   System.out.println("searchname : " + searchname);
	   System.out.println("searchTEXT : " +searchtext);
	
		List<BoardDTO> searchtest = null;   
	
	    
	    List<NoticeDTO> noticeList = null;
	    List<BoardDTO> articleList = null;
	    noticeList = service.getNotice();
	    
	    String memId = (String)session.getAttribute("memId");
		MemberDTO id = memberserivce.getMember(memId);
		model.addAttribute("id",id);
	    model.addAttribute("notice",noticeList);
	    
	    
		if(searchname.equals("")) {
		count = service.getConceptCount();
		Pagination pagination = new Pagination(count,curPage);
		articleList = service.getConcept(pagination.getStartIndex());
	    model.addAttribute("list",articleList);
	    model.addAttribute("pagination",pagination);
	    System.out.println(pagination);
		}
		else if(searchname.equals("title")){
			count = service.getConceptTitleCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getConceptTitleSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 return "board/conceptSearchList";
		}
		else if(searchname.equals("subjcont")){
			count = service.getConceptsubjcontCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getConceptsubjcontSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 System.out.println("page count : " + count);
			 
			 return "board/conceptSearchList";
		}
		else if(searchname.equals("writer")) {
			count = service.getConceptWriterCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			searchtest = service.getConceptWriterSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 return "board/conceptSearchList";
			 
		}
		else if(searchname.equals("content")) {
			count = service.getConceptContentCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getConceptContentSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 return "board/conceptSearchList";
		}
	   
	    
	    
		return "board/conceptList";  //占쌜몌옙占쏙옙占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙
	}
	@RequestMapping("conceptSearchList")
	public String conceptSearchList(Model model,@RequestParam(defaultValue="1") int curPage,HttpSession session,@RequestParam(defaultValue="")String searchname,@RequestParam(defaultValue="")String searchtext){	
		
	   int count = 0;

	   	List<BoardDTO> searchtest = null;
	    List<NoticeDTO> noticeList = null;
	    
	    List<BoardDTO> articleList = null;
	    noticeList = service.getNotice();
	    
	    String memId = (String)session.getAttribute("memId");
		MemberDTO id = memberserivce.getMember(memId);
		model.addAttribute("id",id);
	    model.addAttribute("notice",noticeList);
	    
	    
		if(searchname.equals("")) {
		count = service.getArticleCount();
		Pagination pagination = new Pagination(count,curPage);
		articleList = service.getArticles(pagination.getStartIndex());
	    model.addAttribute("list",articleList);
	    model.addAttribute("pagination",pagination);
	    return "board/conceptList";
		}
		else if(searchname.equals("title")){
			count = service.getConceptTitleCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getConceptTitleSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 
		}
		else if(searchname.equals("subjcont")){
			count = service.getConceptsubjcontCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getConceptsubjcontSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
		
		}
		else if(searchname.equals("writer")) {
			count = service.getConceptWriterCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			searchtest = service.getConceptWriterSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 
		}
		else if(searchname.equals("content")) {
			count = service.getConceptContentCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getConceptContentSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
		}
	   
	    
	    
		return "board/conceptList";  //占쌜몌옙占쏙옙占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙
	}

	@RequestMapping("informationList")
	public String Informationlist(Model model,@RequestParam(defaultValue="1") int curPage,HttpSession session,@RequestParam(defaultValue="")String searchname,@RequestParam(defaultValue="")String searchtext) {	
		
	/*   int count = service.getInformationCount();
	   
	    Pagination pagination = new Pagination(count,curPage);
        // 占쏙옙체占쏙옙占쏙옙트 占쏙옙占�
	    List<NoticeDTO> noticeList = null;
	    List<BoardDTO> articleList = null;
	    noticeList = service.getNotice();
	    articleList = service.getInformationArticles(pagination.getStartIndex());
	    
	    System.out.println(pagination);
	    model.addAttribute("notice",noticeList);
	    model.addAttribute("list",articleList);
	    model.addAttribute("pagination",pagination);
	   */
		 int count = 0; //service.getArticleCount();
			List<BoardDTO> searchtest = null;
		    
		    List<NoticeDTO> noticeList = null;
		    List<BoardDTO> articleList = null;
		    noticeList = service.getNotice();
		    
		    String memId = (String)session.getAttribute("memId");
			MemberDTO id = memberserivce.getMember(memId);
			model.addAttribute("id",id);
		    model.addAttribute("notice",noticeList);
		    
		    
			if(searchname.equals("")) {
			count = service.getInformationCount();
			Pagination pagination = new Pagination(count,curPage);
			articleList = service.getInformationArticles(pagination.getStartIndex());
		    model.addAttribute("list",articleList);
		    model.addAttribute("pagination",pagination);
		    return "board/informationList";
			}
			
			else if(searchname.equals("title")){
				count = service.getInformationTitleCount(searchtext);
				Pagination pagination = new Pagination(count,curPage);
				 model.addAttribute("pagination",pagination);
				 searchtest = service.getInformationTitleSearch(searchtext,curPage);
				 model.addAttribute("list",searchtest);
				 System.out.println(pagination);
			}
			else if(searchname.equals("subjcont")){
				count = service.getInformationsubjcontCount(searchtext);
				Pagination pagination = new Pagination(count,curPage);
				 model.addAttribute("pagination",pagination);
				 searchtest = service.getInformationsubjcontSearch(searchtext,curPage);
				 model.addAttribute("list",searchtest);
				 System.out.println(pagination);
			}
			else if(searchname.equals("writer")) {
				count = service.getInformationWriterCount(searchtext);
				Pagination pagination = new Pagination(count,curPage);
				 model.addAttribute("pagination",pagination);
				searchtest = service.getInformationWriterSearch(searchtext,curPage);
				 model.addAttribute("list",searchtest);
				 System.out.println(pagination);
				 
			}
			else if(searchname.equals("content")) {
				count = service.getInformationContentCount(searchtext);
				Pagination pagination = new Pagination(count,curPage);
				 model.addAttribute("pagination",pagination);
				 searchtest = service.getInformationContentSearch(searchtext,curPage);
				 model.addAttribute("list",searchtest);
				 System.out.println(pagination);
			}
		
		return "board/informationList";  //占쌜몌옙占쏙옙占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙
	}
	
	@RequestMapping("informationConceptList")
	public String informationConceptList(Model model,@RequestParam(defaultValue="1") int curPage,HttpSession session,@RequestParam(defaultValue="")String searchname,@RequestParam(defaultValue="")String searchtext){	
		
		   int count = 0;

		   	List<BoardDTO> searchtest = null;
		    List<NoticeDTO> noticeList = null;
		    
		    List<BoardDTO> articleList = null;
		    noticeList = service.getNotice();
		    
		    String memId = (String)session.getAttribute("memId");
			MemberDTO id = memberserivce.getMember(memId);
			model.addAttribute("id",id);
		    model.addAttribute("notice",noticeList);
		    
		    
			if(searchname.equals("")) {
			count = service.getInformationConceptCount();
			Pagination pagination = new Pagination(count,curPage);
			articleList = service.getInformationConcept(pagination.getStartIndex());
		    model.addAttribute("list",articleList);
		    model.addAttribute("pagination",pagination);
			 
			}
			else if(searchname.equals("title")){
				count = service.getInformationConceptTitleCount(searchtext);
				Pagination pagination = new Pagination(count,curPage);
				 model.addAttribute("pagination",pagination);
				 searchtest = service.getInformationConceptTitleSearch(searchtext,pagination.getStartIndex());
				 model.addAttribute("list",searchtest);
				 model.addAttribute("searchname",searchname);
				 model.addAttribute("searchtext",searchtext);
				 System.out.println(pagination);
			}
			else if(searchname.equals("subjcont")){
				count = service.getInformationConceptsubjcontCount(searchtext);
				Pagination pagination = new Pagination(count,curPage);
				 model.addAttribute("pagination",pagination);
				 searchtest = service.getInformationConceptsubjcontSearch(searchtext,pagination.getStartIndex());
				 model.addAttribute("list",searchtest);
				 model.addAttribute("searchname",searchname);
				 model.addAttribute("searchtext",searchtext);
				 System.out.println(pagination);
			}
			else if(searchname.equals("writer")) {
				count = service.getInformationConceptWriterCount(searchtext);
				Pagination pagination = new Pagination(count,curPage);
				 model.addAttribute("pagination",pagination);
				searchtest = service.getInformationConceptWriterSearch(searchtext,pagination.getStartIndex());
				 model.addAttribute("list",searchtest);
				 model.addAttribute("searchname",searchname);
				 model.addAttribute("searchtext",searchtext);
				 System.out.println(pagination);
				 
			}
			else if(searchname.equals("content")) {
				count = service.getInformationConceptContentCount(searchtext);
				Pagination pagination = new Pagination(count,curPage);
				 model.addAttribute("pagination",pagination);
				 searchtest = service.getInformationConceptContentSearch(searchtext,pagination.getStartIndex());
				 model.addAttribute("list",searchtest);
				 model.addAttribute("searchname",searchname);
				 model.addAttribute("searchtext",searchtext);
				 System.out.println(pagination);
			}
		   
		    
		    
			return "board/informationConceptList";  //占쌜몌옙占쏙옙占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙
		}
	
	@RequestMapping("informationConceptSearchList")
	public String informationConceptSearchList(Model model,@RequestParam(defaultValue="1") int curPage,HttpSession session,@RequestParam(defaultValue="")String searchname,@RequestParam(defaultValue="")String searchtext){	
		
	   int count = 0;

	   	List<BoardDTO> searchtest = null;
	    List<NoticeDTO> noticeList = null;
	    
	    List<BoardDTO> articleList = null;
	    noticeList = service.getNotice();
	    
	    String memId = (String)session.getAttribute("memId");
		MemberDTO id = memberserivce.getMember(memId);
		model.addAttribute("id",id);
	    model.addAttribute("notice",noticeList);
	    
	    
		if(searchname.equals("")) {
		count = service.getInformationCount();
		Pagination pagination = new Pagination(count,curPage);
		articleList = service.getInformationArticles(pagination.getStartIndex());
	    model.addAttribute("list",articleList);
	    model.addAttribute("pagination",pagination);
	    return "board/informationConceptList";
		}
		else if(searchname.equals("title")){
			
			count = service.getInformationConceptTitleCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getInformationConceptTitleSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 
		}
		else if(searchname.equals("subjcont")){
			count = service.getInformationConceptsubjcontCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getInformationConceptsubjcontSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
		}
		else if(searchname.equals("writer")) {
			count = service.getInformationConceptWriterCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			searchtest = service.getInformationConceptWriterSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
			 
		}
		else if(searchname.equals("content")) {
			count = service.getInformationConceptContentCount(searchtext);
			Pagination pagination = new Pagination(count,curPage);
			 model.addAttribute("pagination",pagination);
			 searchtest = service.getInformationConceptContentSearch(searchtext,pagination.getStartIndex());
			 model.addAttribute("list",searchtest);
			 model.addAttribute("searchname",searchname);
			 model.addAttribute("searchtext",searchtext);
			 System.out.println(pagination);
		}
	   
	    
	    
		return "board/informationConceptList";  //占쌜몌옙占쏙옙占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙
	}

	@RequestMapping("informationWriteForm")
	public String informationWriteForm(BoardDTO dto,HttpSession session,Model model) {
		
		String memId = (String)session.getAttribute("memId");
		
		if(memId == null) {
			return "member/loginForm";
		}
		else{
		MemberDTO id = memberserivce.getMember(memId);
		model.addAttribute("id",id);
		System.out.println(memId);
		System.out.println(id);
		return "board/informationWriteForm"; //占쏙옙 占쌜쇽옙 占쏙옙占쏙옙占쏙옙 占싱듸옙
		}
	
	}
	@RequestMapping("informationWritePro")
	public String InformationwritePro(BoardDTO dto ,HttpSession session) {
		String memId = (String)session.getAttribute("memId");
		System.out.println("informationWritePro test");
		memberserivce.pointUp(memId);
		service.insertInformationArticle(dto);	
		System.out.println("informationWritePro END");
	
		return "board/informationWritePro";	//占쏙옙占쌜쇽옙
	}
	
	
	

	@RequestMapping("writeForm")
	public String writeForm(BoardDTO dto,HttpSession session,Model model) {
		
		String memId = (String)session.getAttribute("memId");
		
		if(memId == null) {
			return "member/loginForm";
		}
		else{
		MemberDTO id = memberserivce.getMember(memId);
		model.addAttribute("id",id);
		System.out.println(memId);
		System.out.println(id);
		return "board/writeForm"; //占쏙옙 占쌜쇽옙 占쏙옙占쏙옙占쏙옙 占싱듸옙
		}
	
	}
		
	@RequestMapping("contentCssTest")
	public String contentCss() {
		return "board/contentCssTest";
	}
	@RequestMapping("writePro")
	public String writePro(BoardDTO dto ,HttpSession session) {
		String memId = (String)session.getAttribute("memId");
		System.out.println("WritePro test");
		memberserivce.pointUp(memId);
		service.insertArticle(dto);	
		System.out.println("WritePro END");
	
		return "board/writePro";	//占쏙옙占쌜쇽옙
	}
	@RequestMapping("commentPro")
	public String commentPro(CommentDTO dto,int bno) {
		service.insertComment(dto);
		service.comCntUp(bno);

		return "board/commentPro";	//占쏙옙占쌜쇽옙
	}
	@RequestMapping("content")
	public String content(int bno,Model model,HttpSession session){
		
		model.addAttribute("dto",service.getArticle(bno));
		//System.out.println(service.getArticle(bno));
		List<CommentDTO>dto2 = service.getComment(bno);		
		
		String memId = (String)session.getAttribute("memId");

		MemberDTO id = memberserivce.getMember(memId);
		model.addAttribute("id",id);
		model.addAttribute("dto2",service.getComment(bno));
		System.out.println(id);
		System.out.println(dto2);
		
		//model.addAttribute(dto2);
		//BoardDTO dto = new BoardDTO();
		//dto = service.getArticle(bno);
		//System.out.println(dto);
		
		return "board/content"; //占쏙옙 占쏙옙占싸놂옙占쎈보占쏙옙
	}
	@RequestMapping("informationContent")
	public String informationContent(int bno,Model model,HttpSession session){
		
		model.addAttribute("dto",service.getArticle(bno));
		//System.out.println(service.getArticle(bno));
		List<CommentDTO>dto2 = service.getComment(bno);		
		
		String memId = (String)session.getAttribute("memId");

		MemberDTO id = memberserivce.getMember(memId);
		model.addAttribute("id",id);
		model.addAttribute("dto2",service.getComment(bno));
		System.out.println(id);
		System.out.println(dto2);
		
		//model.addAttribute(dto2);
		//BoardDTO dto = new BoardDTO();
		//dto = service.getArticle(bno);
		//System.out.println(dto);
		
		return "board/informationContent"; //占쏙옙 占쏙옙占싸놂옙占쎈보占쏙옙
	}
	@RequestMapping("notice")
	public String contentNotice(int bno,Model model){
		
		service.noticeViewCntUp(bno);
		model.addAttribute("dto",service.getNoticeContent(bno));
		
		List<CommentDTO>dto2 = service.getComment(bno);
		//model.addAttribute(dto2);
		//BoardDTO dto = new BoardDTO();
		//dto = service.getArticle(bno);
		//System.out.println(dto);
		
		return "board/notice"; //占쏙옙 占쏙옙占싸놂옙占쎈보占쏙옙
	}
	@RequestMapping("deleteForm")
	public String deletePro(int bno){
		service.deleteArticle(bno);
		service.deleteContentComment(bno);
		return "board/deleteForm";
	}
	@RequestMapping("informationDeleteForm")
	public String informationDeletePro(int bno){
		service.deleteArticle(bno);
		service.deleteContentComment(bno);
		return "board/informationWritePro";
	}
	@RequestMapping("commentDeleteForm")
	public String CommentdeletePro(int comno,int bno){
		
		
		System.out.println("CommentDeleteProtest 占쏙옙膀占싫� = " + comno);
		service.deleteComment(comno);
		service.comCntDown(bno);
		return "board/commentDelete";
	}
	@RequestMapping("modifyForm")
	public String modifyForm(int bno,Model model,HttpSession session){
		
		String memId = (String)session.getAttribute("memId");

		MemberDTO id = memberserivce.getMember(memId);
		model.addAttribute("id",id);
		model.addAttribute("dto",service.getArticle(bno));		
		return "board/modifyForm";
	}
	@RequestMapping("informationModifyForm")
	public String informationModifyForm(int bno,Model model,HttpSession session){
		
		String memId = (String)session.getAttribute("memId");

		MemberDTO id = memberserivce.getMember(memId);
		model.addAttribute("id",id);
		model.addAttribute("dto",service.getArticle(bno));		
		return "board/informationModifyForm";
	}
	
	@RequestMapping("modifyPro")
	public String modifyPro(BoardDTO dto) {
		service.updateContent(dto);
	
		return "board/modifyPro";	
	}
	@RequestMapping("informationModifyPro")
	public String informationModifyPro(BoardDTO dto) {
		service.updateContent(dto);
	
		return "board/informationModifyPro";	
	}
	@RequestMapping("recommendPro")
	public String recommendPro(int bno) {
		service.recommendCntUp(bno);
	
		return "board/recommendPro";
	}
	/*@RequestMapping("conceptPro")
	public String conceptPro(int bno) {
		
		service.insertConceptBoard(bno);
		service.recommendCntUp(bno);
		return "board/conceptPro";	
	}*/
	@RequestMapping("noticerecommendPro")
	public String noticerecommendPro(int bno) {
		service.noticeRecommendCntUp(bno);
	
		return "board/recommendPro";	
	}
	
}















