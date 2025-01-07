package org.movie.service;

import java.util.List;
import org.movie.model.FilmMakerDTO;


public interface MovieNewsService {
	
	// filmmaker 테이블 전체 검색
	public List<FilmMakerDTO> allFilmMaker();
	
	// filmmaker 테이블 데이터 추가
	public int insert(FilmMakerDTO dto);
	
	
	//  filmmaker 테이블(영화인) 검색
	public List<FilmMakerDTO> allSearch(String search);
	
	// 영화인 상세 페이지
	public List<FilmMakerDTO> allContent(int fnum);
	
}
