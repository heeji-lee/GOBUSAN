package com.project.mapper;

import java.util.List;

import com.project.dto.TReview;

public interface TReviewMapper {
	public void insert(TReview review);
	public List<TReview>getList(int tnum);
	public void delete(int rnum);
	public TReview read(int rnum);
}