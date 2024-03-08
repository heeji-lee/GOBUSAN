package com.project.mapper;

import java.util.HashMap;
import java.util.List;

import com.project.dto.Notice;

public interface NoticeMapper {
	
	public void insert(Notice notice);	
	
	public List<Notice> findAll(HashMap<String, Object> hm);
	
	public int count(HashMap<String, Object> hm);
	
	public int hitCount(int nnum);
	
	public Notice findByNum(int nnum);
	
	public void update(Notice notice);
	
	public void delete(int nnum);
}