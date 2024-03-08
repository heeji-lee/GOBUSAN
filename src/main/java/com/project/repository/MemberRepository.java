package com.project.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.dto.Member;
import com.project.mapper.MemberMapper;

@Repository
public class MemberRepository {
	@Autowired
	private MemberMapper mMapper;
	
	public List<Member> findAll(HashMap<String, Object> hm) {
		return mMapper.findAll(hm);
	}
	
	public int getCount(HashMap<String, Object> hm) {
		return mMapper.count(hm);
	}
	
	//추가
	public void insert(Member member) {
		mMapper.mInsert(member);
	}
	
	//상세보기
	public Member findById(String id) {
		return mMapper.mfindById(id);
	}
	
	//수정
	public void update(Member member) {
		mMapper.mUpdate(member);
	}
	
	//삭제
	public void delete(String id) {
		mMapper.mDelete(id);
	}
}
