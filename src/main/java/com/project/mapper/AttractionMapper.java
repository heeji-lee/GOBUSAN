package com.project.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.project.dto.Attraction;

public interface AttractionMapper {
	
	public void insert(Attraction attraction);
	
	public List<Attraction> findAll(HashMap<String, Object> hm);
	
	public Attraction findByNum(int num);
	
	public void update(Attraction attraction);
	
	public void delete(int num);
	
	public int count(HashMap<String, Object> hm);
	
	public void updateReplyCnt(@Param("anum") int anum, @Param("amount") int amount);
	
	public int hitCount(int num);
}