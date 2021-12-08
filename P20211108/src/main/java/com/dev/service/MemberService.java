package com.dev.service;

import java.util.List;

import com.dev.dao.MemberDAO;
import com.dev.vo.MemberVO;

public class MemberService {
	MemberDAO dao = new MemberDAO();

	// 한건 입력.
	public MemberVO insert(MemberVO vo) {
		return dao.memberInsert(vo);
	}
	
	// 리스트 조회.
	public List<MemberVO> searchAll() {
		return dao.memberList();
	}
	
	// 한건 조회.
	public MemberVO searchOne(String id) {
		return dao.memberSearch(id);
	}
	
	// 수정
	public MemberVO update(MemberVO vo) {
		return dao.memberUpdate(vo);
	}
	
	// 삭제
	public void delete(String id) {
		dao.memberDelete(id);
	}
}
