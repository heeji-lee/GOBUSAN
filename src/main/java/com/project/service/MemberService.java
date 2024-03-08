package com.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dto.Member;
import com.project.repository.MemberRepository;

@Service
public class MemberService {
	@Autowired
	private MemberRepository mRepository;
	
	public List<Member> findAll(HashMap<String, Object>hm){
		return mRepository.findAll(hm);
	}

	public int getCount(HashMap<String, Object> hm) {
		return mRepository.getCount(hm);
	}
	
	//추가
	public void insert(Member member) {
		mRepository.insert(member);
	}
	//상세보기
	public Member findById(String id) {
		return mRepository.findById(id);
	}
	//수정
	public void update(Member member) {
		mRepository.update(member);
	}
	//삭제
	public void delete(String id) {
		mRepository.delete(id);
	}
}