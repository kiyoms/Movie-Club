package org.movie.service;

import java.util.List;

import org.movie.mapper.MovieNewsMapper;
import org.movie.model.FilmMakerDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieNewsServiceImpl implements MovieNewsService{
	
	@Autowired
	private MovieNewsMapper mapper;

	@Override
	public List<FilmMakerDTO> allFilmMaker() {
		return mapper.getList();	
	}
	
	@Override
	public int insert(FilmMakerDTO dto) {
		return mapper.setFilmMaker(dto);
	}
	
		
	@Override
	public List<FilmMakerDTO> allSearch(String search) {
		return mapper.getSearch(search);	
	}
	
	@Override
	public List<FilmMakerDTO> allContent(int fnum){
		return mapper.getContent(fnum);
	}
		
	
}

