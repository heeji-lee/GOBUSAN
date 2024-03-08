package com.project.mapper;

import java.util.List;

import com.project.dto.FReview;

public interface FReviewMapper {
	//리뷰추가
	public void insert(FReview review);
	//전체보기
	public List<FReview>getList(int fnum);
	//리뷰삭제
	public void delete(int rnum);
	//리뷰조회
	public FReview read(int rnum);
}