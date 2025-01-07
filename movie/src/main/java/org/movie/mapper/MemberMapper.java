package org.movie.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.movie.model.MemberDTO;

public interface MemberMapper {
	
	public int getCount();
	
	public int confirmId(String id);
	public void insertMember(MemberDTO dto);
	public int userCheck(MemberDTO dto);
	public MemberDTO getMember(String id);
	public void updateMember(MemberDTO dto);
	
	public void deleteMember(@Param("id") String id ,@Param("pw") String pw);
	public void pointUp(String id);
	public List<MemberDTO> getMemberList();
}
