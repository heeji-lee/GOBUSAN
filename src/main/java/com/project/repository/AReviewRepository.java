package com.project.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.dto.AReview;
import com.project.mapper.AReviewMapper;
import com.project.mapper.AttractionMapper;

@Repository
public class AReviewRepository {
	@Autowired
	private AReviewMapper rMapper;
	
	@Autowired
	private AttractionMapper aMapper;
	
	@Transactional
	public void insert(AReview review) {
		aMapper.updateReplyCnt(review.getAnum(),1);
		rMapper.insert(review);
	}
	
	public List<AReview> getList(int anum) {
		return rMapper.getList(anum);
	}
	
	@Transactional
	public void reviewDelete(int rnum) {
		AReview review = rMapper.read(rnum);
		aMapper.updateReplyCnt(review.getAnum(),-1);
		rMapper.delete(rnum);
	}
}