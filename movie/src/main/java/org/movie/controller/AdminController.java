package org.movie.controller;

import java.util.List;

import org.movie.model.BoardDTO;
import org.movie.model.MemberDTO;
import org.movie.model.ScreenDTO;
import org.movie.service.BoardService;
import org.movie.service.MemberService;
import org.movie.service.MovieNewsService;
import org.movie.service.ScreenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	@Autowired
	private MemberService memberserivce;
	
	@Autowired
	private BoardService boardservice;
	
	@Autowired
	private ScreenService screenservice;
	
	@Autowired
	private MovieNewsService movienewsservice;
		
	
	
	@RequestMapping("adminMain")
	public String adminMain() {
		
		return "admin/adminMain";
	}
	
		//회원목록
		@RequestMapping("MemberList")
		public String MemberList(Model model) {
			List<MemberDTO> list = null;
			
			list = memberserivce.getMemberList();
			
			model.addAttribute("list",list);
			System.out.println("MemberList :  "+list);


			return "admin/MemberList";
		}
		

		//게시판 목록
		@RequestMapping("BoardList")
		public String BoradList(Model model) {
			List<BoardDTO> list = null;
			
			list = boardservice.getBoardList();
			
			model.addAttribute("list",list);
			System.out.println("BoardList : " + list);
			
			return "admin/BoardList";
		}
		
		//영화목록
		@RequestMapping("ScreenList")
		public String ScreenList(Model model)  {
			
			List<ScreenDTO> list = null;
			
			list = screenservice.getScreenList();
					
			model.addAttribute("list",list);
			System.out.println("ScreenList : "+list);
			
			return "admin/ScreenList";
		}
	
		//회원삭제
				@RequestMapping("MemberDelete")
				public String MemberDelete(Model model) {
					List<MemberDTO> list = null;
					
					list = memberserivce.getMemberList();
					
					model.addAttribute("list",list);
					System.out.println("MemberDelete :  "+list);


					return "admin/MemberDelete";
				}
				

				//게시판 삭제
				@RequestMapping("BoradDelete")
				public String BoradDelete(Model model) {
					List<BoardDTO> list = null;
					
					list = boardservice.getBoardList();
					
					model.addAttribute("list",list);
					System.out.println("BoradDelete : " + list);
					
					return "admin/BoradDelete";
				}
				
				//영화삭제
				@RequestMapping("ScreenDelete")
				public String ScreenDelete(Model model)  {
					
					List<ScreenDTO> list = null;
					
					list = screenservice.getScreenList();
							
					model.addAttribute("list",list);
					System.out.println("ScreenDelete : "+list);
					
					return "admin/ScreenDelete";
				}
			
}
