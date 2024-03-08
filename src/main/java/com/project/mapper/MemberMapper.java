package com.project.mapper;

import java.util.HashMap;
import java.util.List;

import com.project.dto.Member;

public interface MemberMapper {
	public List<Member> findAll(HashMap<String, Object> hm);
	public int count(HashMap<String, Object> hm);
	//추가
	public void mInsert(Member member);
	//상세보기
	public Member mfindById(String id);
	//수정
	public void mUpdate(Member member);
	//삭제
	public void mDelete(String id);
}