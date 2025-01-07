package org.movie.service;

import java.util.List;

import org.movie.controller.MovieAPI;
import org.movie.mapper.ScreenMapper;
import org.movie.model.ScreenDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service

public class ScreenServiceImpl implements ScreenService{

	@Autowired
	private ScreenMapper mapper;

	@Override
	public List<ScreenDTO> listData(int index){
		return mapper.listData(index);
	}

	@Override
	public ScreenDTO detailData(String title) {
		return mapper.detailData(title);
	}
	public ScreenDTO detailScreenData(int snum) {
		return mapper.detailScreenData(snum);
	}
	public int getScreenCount() {
		return mapper.getScreenCount();
	}
	public List<ScreenDTO> getScreenList(){
		return mapper.getScreenList();
	}
		
}
