package org.movie.service;

import java.util.List;
import org.movie.model.FilmMakerDTO;


public interface MovieNewsService {
	
	// filmmaker ���̺� ��ü �˻�
	public List<FilmMakerDTO> allFilmMaker();
	
	// filmmaker ���̺� ������ �߰�
	public int insert(FilmMakerDTO dto);
	
	
	//  filmmaker ���̺�(��ȭ��) �˻�
	public List<FilmMakerDTO> allSearch(String search);
	
	// ��ȭ�� �� ������
	public List<FilmMakerDTO> allContent(int fnum);
	
}
