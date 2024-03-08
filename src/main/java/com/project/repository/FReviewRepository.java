package com.project.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.dto.FReview;
import com.project.mapper.FestivalMapper;
import com.project.mapper.FReviewMapper;

@Repository
public class FReviewRepository {
	@Autowired
	private FReviewMapper rMapper;
	
	@Autowired
	private FestivalMapper fMapper;
	
	//리뷰추가
	@Transactional
	public void insert(FReview review) {
		fMapper.updateReplyCnt(review.getFnum(),1);
		rMapper.insert(review);
	}
	
	//전체보기
	public List<FReview> getList(int fnum) {
		return rMapper.getList(fnum);
	}
	
	//리뷰삭제
	@Transactional
	public void reviewDelete(int rnum) {
		//리뷰 카운트 변경
		FReview review = rMapper.read(rnum);
		fMapper.updateReplyCnt(review.getFnum(),-1);
		//리뷰삭제
		rMapper.delete(rnum);
	}
}