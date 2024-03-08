package com.project.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.dto.Quesetion;
import com.project.mapper.QuesetionMapper;

@Repository
public class QuesetionRepository {
	@Autowired
	private QuesetionMapper qMapper;
	
	public void insert(Quesetion quesetion) {
		qMapper.insert(quesetion);
	}
	
	public List<Quesetion> findAll(HashMap<String, Object> hm) {
		return qMapper.findAll(hm);
	}
	
	public int getCount(HashMap<String, Object> hm) {
		return qMapper.count(hm);
	}
	
	public Quesetion findByNum(int qnum) {
		return qMapper.findByNum(qnum);
	}
	
	public void delete(int qnum) {
		qMapper.delete(qnum);
	}
}