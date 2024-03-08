package com.project.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.dto.Festival;
import com.project.mapper.FestivalMapper;

@Repository
public class FestivalRepository  {
	@Autowired
	private FestivalMapper fMapper;
	
	public void insert(Festival festival) {
		fMapper.insert(festival);
	}
	
	public List<Festival> findAll(HashMap<String, Object> hm) {
		return fMapper.findAll(hm);
	}
	
	public int getCount(HashMap<String, Object> hm) {
		return fMapper.count(hm);
	}
	
	public int hitCount(int num) {
		return fMapper.hitCount(num);
	}
	
	public Festival findByNum(int num) {
		return fMapper.findByNum(num);
	}
	
	public void update(Festival festival) {
		fMapper.update(festival);
	}
	
	public void delete(int num) {
		fMapper.delete(num);
	}
}