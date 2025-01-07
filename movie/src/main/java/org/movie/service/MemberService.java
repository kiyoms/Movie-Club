package org.movie.service;

import java.util.List;

import org.movie.model.BoardDTO;
import org.movie.model.MemberDTO;

public interface MemberService {
	public int confirmId(String id);
	public void insertMember(MemberDTO dto);
	public int userCheck(MemberDTO dto);
	public MemberDTO getMember(String id);
	public void updateMember(MemberDTO dto);
	public void deleteMember(String id , String pw);
	public int getCount();
	public void pointUp(String id);
	public List<MemberDTO> getMemberList();
}
