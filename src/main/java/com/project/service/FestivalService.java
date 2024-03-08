package com.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dto.Festival;
import com.project.repository.FestivalRepository;

@Service
public class FestivalService {
	@Autowired
	private FestivalRepository fRepository;

	public void insert(Festival festival) {
		fRepository.insert(festival);
	}
	
	public List<Festival> findAll(HashMap<String, Object>hm){
		return fRepository.findAll(hm);
	}

	public int getCount(HashMap<String, Object> hm) {
		return fRepository.getCount(hm);
	}
	
	public int hitCount(int num) {
		return fRepository.hitCount(num);
	}
	
	public Festival findByNum(int num) {
		return fRepository.findByNum(num);
	}
	
	public void update(Festival festival) {
		fRepository.update(festival);
	}
	
	public void delete(int num) {
		fRepository.delete(num);
	}
}