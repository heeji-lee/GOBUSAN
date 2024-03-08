package com.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dto.Quesetion;
import com.project.repository.QuesetionRepository;

@Service
public class QuesetionService {
	@Autowired
	private QuesetionRepository qRepository;

	public void insert(Quesetion quesetion) {
		qRepository.insert(quesetion);
	}
	
	public List<Quesetion> findAll(HashMap<String, Object>hm){
		return qRepository.findAll(hm);
	}

	public int getCount(HashMap<String, Object> hm) {
		return qRepository.getCount(hm);
	}
	
	public Quesetion findByNum(int qnum) {
		return qRepository.findByNum(qnum);
	}
	
	public void delete(int qnum) {
		qRepository.delete(qnum);
	}
}