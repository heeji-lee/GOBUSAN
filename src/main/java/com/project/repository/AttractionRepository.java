package com.project.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.dto.Attraction;
import com.project.mapper.AttractionMapper;

@Repository
public class AttractionRepository {
	@Autowired
	private AttractionMapper aMapper;
	
	public void insert(Attraction attraction) {
		aMapper.insert(attraction);
	}
	
	public List<Attraction> findAll(HashMap<String, Object> hm) {
		return aMapper.findAll(hm);
	}
	
	public int getCount(HashMap<String, Object> hm) {
		return aMapper.count(hm);
	}
	
	public int hitCount(int num) {
		return aMapper.hitCount(num);
	}
	
	public Attraction findByNum(int num) {
		return aMapper.findByNum(num);
	}
	
	public void update(Attraction attraction) {
		aMapper.update(attraction);
	}
	
	public void delete(int num) {
		aMapper.delete(num);
	}
}