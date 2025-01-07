package org.movie.service;

import java.util.List;
import org.movie.model.BoardDTO;
import org.movie.model.CommentDTO;
import org.movie.model.NoticeDTO;

public interface BoardService {
	
	public List<BoardDTO> getBoardList();
	
	public void insertArticle(BoardDTO dto);	 //작성글 db에 넣기

	public List<BoardDTO> getArticles(int index);		 //작성글을 가져와 글목록에 넣기
	
	public BoardDTO getArticle(int num);		 //작성글을 글번호로 검색해서 넣기 
	
	public BoardDTO getArticleList();			 //낱개로 가져오기 test용
	
	public void insertComment(CommentDTO dto);	 // 댓글 집어넣기
	
	public List<CommentDTO> getComment(int num); //댓글 받아오기
	
	public void comCntUp(int num);				 //댓글 갯수 올리기
	
	public void comCntDown(int num);	
	
	public void deleteContentComment(int num);
	
	public void deleteArticle(int num);			 //글 삭제하기 
	
	public void deleteComment(int num);		// 댓글 삭제하기 나중에 닉네임이랑 글번호 받아와서 하나씩 삭제하는기능 넣기
	
	public void updateContent(BoardDTO dto);	// 글 수정하기
	
	public void recommendCntUp(int num);		//추천수 받아오기
	
	public int getArticleCount();				// 전체 글 갯수 받아오기
	
	public List<NoticeDTO> getNotice();
	
	public NoticeDTO getNoticeContent(int bno);
	
	public void noticeViewCntUp(int num);
	
	public void noticeRecommendCntUp(int num);
	
	public List<BoardDTO> getConcept(int index);
	
	public int getConceptCount();
	
	
	
	public int getInformationCount();
	
	public int getInformationConceptCount();
	
	public void insertInformationArticle(BoardDTO dto);
	
	//public BoardDTO getInformationArticle(int num);
	
	public List<BoardDTO> getInformationConcept(int index);// 정보개념글 가져오기
	
	public List<BoardDTO> getInformationArticles(int index);//정보글 목록 불러오기	
	
	public List<BoardDTO> getWriterSearch(String searchtext,int index);
	
	public List<BoardDTO> getTitleSearch(String searchtext,int index);
	
	public List<BoardDTO> getContentSearch(String searchtext,int index);
	
	public List<BoardDTO> getsubjcontSearch(String searchtext,int index);
	
	public List<BoardDTO> getInformationWriterSearch(String searchtext,int index);
	
	public List<BoardDTO> getInformationTitleSearch(String searchtext,int index);
	
	public List<BoardDTO> getInformationContentSearch(String searchtext,int index);
	
	public List<BoardDTO> getInformationsubjcontSearch(String searchtext,int index);
	
	public List<BoardDTO> getConceptWriterSearch(String searchtext,int index);
	
	public List<BoardDTO> getConceptTitleSearch(String searchtext,int index);
	
	public List<BoardDTO> getConceptContentSearch(String searchtext,int index);
	
	public List<BoardDTO> getConceptsubjcontSearch(String searchtext,int index);
	
	public List<BoardDTO> getInformationConceptWriterSearch(String searchtext,int index);
	
	public List<BoardDTO> getInformationConceptTitleSearch(String searchtext,int index);
	
	public List<BoardDTO> getInformationConceptContentSearch(String searchtext,int index);
	
	public List<BoardDTO> getInformationConceptsubjcontSearch(String searchtext,int index);
	
	public int getWriterCount(String searchtext);
	
	public int getTitleCount(String searchtext);
	
	public int getContentCount(String searchtext);
	
	public int getsubjcontCount(String searchtext);
	
	public int getConceptWriterCount(String searchtext);
	
	public int getConceptTitleCount(String searchtext);
	
	public int getConceptContentCount(String searchtext);
	
	public int getConceptsubjcontCount(String searchtext);
	
	public int getInformationConceptWriterCount(String searchtext);
	
	public int getInformationConceptTitleCount(String searchtext);
	
	public int getInformationConceptContentCount(String searchtext);
	
	public int getInformationConceptsubjcontCount(String searchtext);
	
	public int getInformationWriterCount(String searchtext);
	
	public int getInformationTitleCount(String searchtext);
	
	public int getInformationContentCount(String searchtext);
	
	public int getInformationsubjcontCount(String searchtext);
	
}

