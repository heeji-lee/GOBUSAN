package com.project.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.dto.Notice;
import com.project.mapper.NoticeMapper;

@Repository
public class NoticeRepository  {
	@Autowired
	private NoticeMapper nMapper;
	
	public void insert(Notice notice) {
		nMapper.insert(notice);
	}
	
	public List<Notice> findAll(HashMap<String, Object> hm) {
		return nMapper.findAll(hm);
	}
	
	public int getCount(HashMap<String, Object> hm) {
		return nMapper.count(hm);
	}
	
	public int hitCount(int nnum) {
		return nMapper.hitCount(nnum);
	}
	
	public Notice findByNum(int nnum) {
		return nMapper.findByNum(nnum);
	}
	
	public void update(Notice notice) {
		nMapper.update(notice);
	}
	
	public void delete(int nnum) {
		nMapper.delete(nnum);
	}
}