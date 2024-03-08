package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dto.TReview;
import com.project.repository.TReviewRepository;

@Service
public class TReviewService {
	@Autowired
	public TReviewRepository rRepository;
	
	public void insert(TReview review) {
		rRepository.insert(review);
	}
	
	public List<TReview> getList(int num){
		return rRepository.getList(num);
	}
	
	public void reviewDelete(int rnum) {
		rRepository.reviewDelete(rnum);
	}
}