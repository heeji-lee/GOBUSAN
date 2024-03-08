package com.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dto.Attraction;
import com.project.repository.AttractionRepository;

@Service
public class AttractionService {
	@Autowired
	private AttractionRepository aRepository;

	public void insert(Attraction attraction) {
		aRepository.insert(attraction);
	}
	
	public List<Attraction> findAll(HashMap<String, Object>hm){
		return aRepository.findAll(hm);
	}

	public int getCount(HashMap<String, Object> hm) {
		return aRepository.getCount(hm);
	}
	
	public int hitCount(int num) {
		return aRepository.hitCount(num);
	}
	
	public Attraction findByNum(int num) {
		return aRepository.findByNum(num);
	}
	
	public void update(Attraction attraction) {
		aRepository.update(attraction);
	}
	
	public void delete(int num) {
		aRepository.delete(num);
	}
}