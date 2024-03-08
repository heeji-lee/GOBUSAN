package com.project.mapper;

import java.util.HashMap;
import java.util.List;

import com.project.dto.Quesetion;

public interface QuesetionMapper {

	public void insert(Quesetion quesetion);	
	
	public List<Quesetion> findAll(HashMap<String, Object> hm);
	
	public int count(HashMap<String, Object> hm);
	
	public Quesetion findByNum(int qnum);
	
	public void delete(int qnum);
}
