package org.movie.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.movie.model.BoardDTO;
import org.movie.model.CommentDTO;
import org.movie.model.NoticeDTO;

public interface BoardMapper {
	
	public void insertArticle(BoardDTO dto); //�Խñ� �ֱ�
	public void viewCntUp(int num);			 //��ȸ�� ����
	public void comCntUp(int num);			// ��ۼ� ����
	public BoardDTO getArticle(int num);	 //�� ��������
	public BoardDTO getArticleList();		//�׽�Ʈ��
	public List<BoardDTO> getArticles(int index);	//��Ͽ� ���� �Խñ� ����Ʈ ��������
	public BoardDTO getContent(int num);	//�׽�Ʈ��
	public void insertComment(CommentDTO dto);
	public List<CommentDTO> getComment(int num);
	public void deleteArticle(int num);
	public void deleteComment(int num);
	public void updateContent(BoardDTO dto);
	public void recommendCntUp(int num);
	public int getArticleCount();
	public void comCntDown(int num);	
	public void deleteContentComment(int num);
	public void noticeViewCntUp(int num);
	public List<BoardDTO> getBoardList();
	public List<NoticeDTO> getNotice();
	
	public NoticeDTO getNoticeContent(int bno);
	
	public void noticeRecommendCntUp(int num);
	
	public List<BoardDTO> getConcept(int index);
	
	public int getConceptCount();
	
	
	
	public int getInformationCount();
	
	public int getInformationConceptCount();
	
	public void insertInformationArticle(BoardDTO dto);
	
	//public BoardDTO getInformationArticle(int num);
	
	public List<BoardDTO> getInformationConcept(int index);
	
	public List<BoardDTO> getInformationArticles(int index);
	
	public int getWriterCount(String searchtext);
	
	public int getTitleCount(String searchtext);
	
	public int getContentCount(String searchtext);
	
	public int getsubjcontCount(String searchtext);
	
	public int getInformationWriterCount(String searchtext);
	
	public int getInformationTitleCount(String searchtext);
	
	public int getInformationContentCount(String searchtext);
	
	public int getInformationsubjcontCount(String searchtext);
	
	public int getConceptWriterCount(String searchtext);
	
	public int getConceptTitleCount(String searchtext);
	
	public int getConceptContentCount(String searchtext);
	
	public int getConceptsubjcontCount(String searchtext);
	
	public int getInformationConceptWriterCount(String searchtext);
	
	public int getInformationConceptTitleCount(String searchtext);
	
	public int getInformationConceptContentCount(String searchtext);
	
	public int getInformationConceptsubjcontCount(String searchtext);
	
	public List<BoardDTO> getWriterSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getTitleSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getContentSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getsubjcontSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getInformationWriterSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getInformationTitleSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getInformationContentSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getInformationsubjcontSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getConceptWriterSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getConceptTitleSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getConceptContentSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getConceptsubjcontSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getInformationConceptWriterSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getInformationConceptTitleSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getInformationConceptContentSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
	public List<BoardDTO> getInformationConceptsubjcontSearch(@Param("searchtext")String searchtext,@Param("startIndex")int index);
	
}






