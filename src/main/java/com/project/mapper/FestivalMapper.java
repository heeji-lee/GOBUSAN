package com.project.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.project.dto.Festival;

public interface FestivalMapper {
	
	public void insert(Festival festival);
	
	public List<Festival> findAll(HashMap<String, Object> hm);
	
	public Festival findByNum(int num);
	
	public void update(Festival festival);
	
	public void delete(int num);
	
	public int count(HashMap<String, Object> hm);
	
	public void updateReplyCnt(@Param("fnum") int fnum, @Param("amount") int amount);
	
	public int hitCount(int num);
}