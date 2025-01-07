package org.movie.service;

import java.util.List;

import org.movie.mapper.MemberMapper;
import org.movie.model.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper mapper;

	@Override
	public int confirmId(String id) {
		return mapper.confirmId(id);
	}
	public List<MemberDTO> getMemberList(){
		return mapper.getMemberList();
	}
	@Override
	public void insertMember(MemberDTO dto) {
		mapper.insertMember(dto);
	}

	@Override
	public int userCheck(MemberDTO dto) {
		return mapper.userCheck(dto);
	}

	@Override
	public MemberDTO getMember(String id) {
		return mapper.getMember(id);
	}

	@Override
	public void updateMember(MemberDTO dto) {
		mapper.updateMember(dto);
	}

	@Override
	public void deleteMember(String id, String pw) {
		mapper.deleteMember(id, pw);
	}
	
	public void pointUp(String id) {
		mapper.pointUp(id);
	}
	@Override
	public int getCount() {
		return mapper.getCount();
	}
}










