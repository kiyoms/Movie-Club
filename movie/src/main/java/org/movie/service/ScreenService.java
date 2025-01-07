package org.movie.service;

import java.util.List;

import org.movie.model.BoardDTO;
import org.movie.model.MemberDTO;
import org.movie.model.ScreenDTO;

public interface ScreenService {

	public List<ScreenDTO> listData(int index);
	public ScreenDTO detailData(String title);
	public ScreenDTO detailScreenData(int snum);
	public int getScreenCount();
	public List<ScreenDTO> getScreenList();
	
}
