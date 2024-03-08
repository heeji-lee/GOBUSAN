package com.project.mapper;

import java.util.List;

import com.project.dto.AReview;

public interface AReviewMapper {
	public void insert(AReview review);
	public List<AReview>getList(int anum);
	public void delete(int rnum);
	public AReview read(int rnum);
}