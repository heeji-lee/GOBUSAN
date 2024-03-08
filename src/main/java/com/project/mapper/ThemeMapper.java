package com.project.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.project.dto.Theme;

public interface ThemeMapper {
	
	public void insert(Theme theme);	
	
	public List<Theme> findAll(HashMap<String, Object> hm);
	
	public Theme findByNum(int num);
	
	public void update(Theme theme);
	
	public void delete(int num);
	
	public int count(HashMap<String, Object> hm);
	
	public void updateReplyCnt(@Param("tnum") int tnum, @Param("amount") int amount);
	
	public int hitCount(int num);
}