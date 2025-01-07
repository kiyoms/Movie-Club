package org.movie.mapper;

import java.util.List;
import org.movie.model.FilmMakerDTO;


public interface MovieNewsMapper {
	
	public List<FilmMakerDTO> getList();
	
	public int setFilmMaker(FilmMakerDTO dto);
	
	
	public List<FilmMakerDTO> getSearch(String search);
	
	public List<FilmMakerDTO> getContent(int fnum);
	
}
