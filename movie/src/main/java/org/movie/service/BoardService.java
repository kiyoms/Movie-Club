package org.movie.service;

import java.util.List;
import org.movie.model.BoardDTO;
import org.movie.model.CommentDTO;
import org.movie.model.NoticeDTO;

public interface BoardService {
	
	public List<BoardDTO> getBoardList();
	
	public void insertArticle(BoardDTO dto);	 //�ۼ��� db�� �ֱ�

	public List<BoardDTO> getArticles(int index);		 //�ۼ����� ������ �۸�Ͽ� �ֱ�
	
	public BoardDTO getArticle(int num);		 //�ۼ����� �۹�ȣ�� �˻��ؼ� �ֱ� 
	
	public BoardDTO getArticleList();			 //������ �������� test��
	
	public void insertComment(CommentDTO dto);	 // ��� ����ֱ�
	
	public List<CommentDTO> getComment(int num); //��� �޾ƿ���
	
	public void comCntUp(int num);				 //��� ���� �ø���
	
	public void comCntDown(int num);	
	
	public void deleteContentComment(int num);
	
	public void deleteArticle(int num);			 //�� �����ϱ� 
	
	public void deleteComment(int num);		// ��� �����ϱ� ���߿� �г����̶� �۹�ȣ �޾ƿͼ� �ϳ��� �����ϴ±�� �ֱ�
	
	public void updateContent(BoardDTO dto);	// �� �����ϱ�
	
	public void recommendCntUp(int num);		//��õ�� �޾ƿ���
	
	public int getArticleCount();				// ��ü �� ���� �޾ƿ���
	
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
	
	public List<BoardDTO> getInformationConcept(int index);// ��������� ��������
	
	public List<BoardDTO> getInformationArticles(int index);//������ ��� �ҷ�����	
	
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

