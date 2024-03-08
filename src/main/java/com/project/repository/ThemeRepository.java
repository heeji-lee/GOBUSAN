package com.project.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.dto.Theme;
import com.project.mapper.ThemeMapper;

@Repository
public class ThemeRepository {
	@Autowired
	private ThemeMapper tMapper;
	
	public void insert(Theme theme) {
		tMapper.insert(theme);
	}
	
	public List<Theme> findAll(HashMap<String, Object> hm) {
		return tMapper.findAll(hm);
	}
	
	public int getCount(HashMap<String, Object> hm) {
		return tMapper.count(hm);
	}
	
	public int hitCount(int num) {
		return tMapper.hitCount(num);
	}
	
	public Theme findByNum(int num) {
		return tMapper.findByNum(num);
	}
	
	public void update(Theme theme) {
		tMapper.update(theme);
	}
	
	public void delete(int num) {
		tMapper.delete(num);
	}
}