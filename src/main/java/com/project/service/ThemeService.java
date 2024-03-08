package com.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dto.Theme;
import com.project.repository.ThemeRepository;

@Service
public class ThemeService {
	@Autowired
	private ThemeRepository tRepository;

	public void insert(Theme theme) {
		tRepository.insert(theme);
	}
	
	public List<Theme> findAll(HashMap<String, Object>hm){
		return tRepository.findAll(hm);
	}

	public int getCount(HashMap<String, Object> hm) {
		return tRepository.getCount(hm);
	}
	
	public int hitCount(int num) {
		return tRepository.hitCount(num);
	}
	
	public Theme findByNum(int num) {
		return tRepository.findByNum(num);
	}
	
	public void update(Theme theme) {
		tRepository.update(theme);
	}
	
	public void delete(int num) {
		tRepository.delete(num);
	}
}