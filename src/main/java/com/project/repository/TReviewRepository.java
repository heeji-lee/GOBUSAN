package com.project.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.dto.TReview;
import com.project.mapper.TReviewMapper;
import com.project.mapper.ThemeMapper;

@Repository
public class TReviewRepository {
	@Autowired
	private TReviewMapper rMapper;
	
	@Autowired
	private ThemeMapper tMapper;
	
	@Transactional
	public void insert(TReview review) {
		tMapper.updateReplyCnt(review.getTnum(),1);
		rMapper.insert(review);
	}
	
	public List<TReview> getList(int tnum) {
		return rMapper.getList(tnum);
	}
	
	@Transactional
	public void reviewDelete(int rnum) {
		TReview review = rMapper.read(rnum);
		tMapper.updateReplyCnt(review.getTnum(),-1);
		rMapper.delete(rnum);
	}
}