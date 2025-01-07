package org.movie.service;

import java.util.List;

import org.movie.mapper.BoardMapper;
import org.movie.model.BoardDTO;
import org.movie.model.CommentDTO;
import org.movie.model.NoticeDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper mapper;

	@Override
	public void insertArticle(BoardDTO dto) {	
		mapper.insertArticle(dto);
	}

	@Override
	public BoardDTO getArticle(int num) {
		// TODO Auto-generated method stub
		mapper.viewCntUp(num);
		return mapper.getArticle(num);
	}
	
	public List<BoardDTO> getBoardList(){
		return mapper.getBoardList();
	}

	@Override
	public List<BoardDTO> getArticles(int index) {
		return mapper.getArticles(index);
	}
	
	@Override
	public BoardDTO getArticleList(){
		return mapper.getArticleList();
	}
	public List<CommentDTO> getComment(int num) {
		return mapper.getComment(num);
	}
	@Override
	public void insertComment(CommentDTO dto){
		mapper.insertComment(dto);
	}
	public void comCntUp(int num) {
		mapper.comCntUp(num);
	}
	public void deleteArticle(int num){
		mapper.deleteArticle(num);
		mapper.deleteComment(num);
	}
	
	public void updateContent(BoardDTO dto) {
		mapper.updateContent(dto);
		
	}
	public void recommendCntUp(int num) {
		mapper.recommendCntUp(num);
		
	}
	
	public void deleteComment(int num) {
		mapper.deleteComment(num);
	}
	public int getArticleCount() {
	return mapper.getArticleCount();
	}
	public List<NoticeDTO> getNotice(){
		return mapper.getNotice();
	}
	
	
	public NoticeDTO getNoticeContent(int bno) {
		return mapper.getNoticeContent(bno);
	}
	
	public void noticeViewCntUp(int num) {
		mapper.noticeViewCntUp(num);
	}
	
	public void noticeRecommendCntUp(int num) {
		mapper.noticeRecommendCntUp(num);
	}
	
	public List<BoardDTO> getConcept(int index){
		return mapper.getConcept(index);
	}
	public void comCntDown(int num) {
		mapper.comCntDown(num);
	}
	public int getConceptCount() {
		return mapper.getConceptCount();
	}
	public void deleteContentComment(int num) {
		mapper.deleteContentComment(num);
	}
	//7월 11일추가 정보게시판용
	
	public int getInformationCount() {
		return mapper.getInformationCount();
	}
	public int getInformationConceptCount() {
		return mapper.getInformationConceptCount();
	}
	public void insertInformationArticle(BoardDTO dto) {
		mapper.insertInformationArticle(dto);
	}
	/*public BoardDTO getInformationArticle(int num) {
		return mapper.getInformationArticle(num);
	}*/
	public List<BoardDTO> getInformationConcept(int index){
		return mapper.getInformationConcept(index);
	}
	public List<BoardDTO> getInformationArticles(int index){
		return mapper.getInformationArticles(index);
	}
	
	public List<BoardDTO> getWriterSearch(String searchtext,int index){
		return mapper.getWriterSearch(searchtext, index);

	}
	
	public List<BoardDTO> getTitleSearch(String searchtext,int index){
		return mapper.getTitleSearch(searchtext, index);
	}
	
	public List<BoardDTO> getContentSearch(String searchtext,int index){
		return mapper.getContentSearch(searchtext, index);
	}
	
	public List<BoardDTO> getsubjcontSearch(String searchtext,int index){
		return mapper.getsubjcontSearch(searchtext, index);
	}
	
	public List<BoardDTO> getInformationWriterSearch(String searchtext,int index){
		return mapper.getInformationWriterSearch(searchtext, index);
	}
	
	public List<BoardDTO> getInformationTitleSearch(String searchtext,int index){
		return mapper.getInformationTitleSearch(searchtext, index);
	}
	
	public List<BoardDTO> getInformationContentSearch(String searchtext,int index){
		return mapper.getInformationContentSearch(searchtext, index);
	}
	
	public List<BoardDTO> getInformationsubjcontSearch(String searchtext,int index){
		return mapper.getInformationsubjcontSearch(searchtext, index);
	}
	
	public int getWriterCount(String searchtext) {
		return mapper.getWriterCount(searchtext);
	}
	public int getTitleCount(String searchtext) {
		return mapper.getTitleCount(searchtext);
	}
	public int getContentCount(String searchtext) {
		return mapper.getContentCount(searchtext);
	}
	public int getsubjcontCount(String searchtext) {
		return mapper.getsubjcontCount(searchtext);
	}
	
	public int getInformationWriterCount(String searchtext) {
		return mapper.getInformationWriterCount(searchtext);
	}
	public int getInformationTitleCount(String searchtext) {
		return mapper.getInformationTitleCount(searchtext);
	}
	public int getInformationContentCount(String searchtext) {
		return mapper.getInformationContentCount(searchtext);
	}
	public int getInformationsubjcontCount(String searchtext) {
		return mapper.getInformationsubjcontCount(searchtext);
	}
	
	public int getConceptWriterCount(String searchtext) {
		return mapper.getConceptWriterCount(searchtext);
	}
	
	public int getConceptTitleCount(String searchtext){
		return mapper.getConceptTitleCount(searchtext);
	}
	
	public int getConceptContentCount(String searchtext){
		return mapper.getConceptContentCount(searchtext);
	}
	
	public int getConceptsubjcontCount(String searchtext){
		return mapper.getConceptsubjcontCount(searchtext);
	}
	
	public int getInformationConceptWriterCount(String searchtext){
		return mapper.getInformationConceptWriterCount(searchtext);
	}
	
	public int getInformationConceptTitleCount(String searchtext){
		return mapper.getInformationConceptTitleCount(searchtext);
	}
	
	public int getInformationConceptContentCount(String searchtext){
		return mapper.getInformationConceptContentCount(searchtext);
	}
	
	public int getInformationConceptsubjcontCount(String searchtext){
		return mapper.getInformationConceptsubjcontCount(searchtext);
	}
		
	public List<BoardDTO> getConceptWriterSearch(String searchtext,int index){
		return mapper.getConceptWriterSearch(searchtext, index);

	}
	
	public List<BoardDTO> getConceptTitleSearch(String searchtext,int index){
		return mapper.getConceptTitleSearch(searchtext, index);
	}
	
	public List<BoardDTO> getConceptContentSearch(String searchtext,int index){
		return mapper.getConceptContentSearch(searchtext, index);
	}
	
	public List<BoardDTO> getConceptsubjcontSearch(String searchtext,int index){
		return mapper.getConceptsubjcontSearch(searchtext, index);
	}
	
	public List<BoardDTO> getInformationConceptWriterSearch(String searchtext,int index){
		return mapper.getInformationConceptWriterSearch(searchtext, index);
	}
	
	public List<BoardDTO> getInformationConceptTitleSearch(String searchtext,int index){
		return mapper.getInformationConceptTitleSearch(searchtext, index);
	}
	
	public List<BoardDTO> getInformationConceptContentSearch(String searchtext,int index){
		return mapper.getInformationConceptContentSearch(searchtext, index);
	}
	
	public List<BoardDTO> getInformationConceptsubjcontSearch(String searchtext,int index){
		return mapper.getInformationConceptsubjcontSearch(searchtext, index);
	}
	
}











