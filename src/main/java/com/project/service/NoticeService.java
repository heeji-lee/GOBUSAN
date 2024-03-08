package com.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dto.Notice;
import com.project.repository.NoticeRepository;

@Service
public class NoticeService {
	@Autowired
	private NoticeRepository nRepository;

	public void insert(Notice notice) {
		nRepository.insert(notice);
	}
	
	public List<Notice> findAll(HashMap<String, Object>hm){
		return nRepository.findAll(hm);
	}

	public int getCount(HashMap<String, Object> hm) {
		return nRepository.getCount(hm);
	}
	
	public int hitCount(int nnum) {
		return nRepository.hitCount(nnum);
	}
	
	public Notice findByNum(int nnum) {
		return nRepository.findByNum(nnum);
	}
	
	public void update(Notice notice) {
		nRepository.update(notice);
	}
	
	public void delete(int nnum) {
		nRepository.delete(nnum);
	}
}