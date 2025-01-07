package org.movie.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.movie.model.ScreenDTO;


public interface ScreenMapper {
	
	public List<ScreenDTO> listData(int index);
	public ScreenDTO detailData(String title);
	public ScreenDTO detailScreenData(int snum);
	public int getScreenCount();
	public List<ScreenDTO> getScreenList();
			
}
