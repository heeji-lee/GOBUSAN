package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dto.FReview;
import com.project.repository.FReviewRepository;

@Service
public class FReviewService {
	@Autowired
	public FReviewRepository rRepository;
	
	public void insert(FReview review) {
		rRepository.insert(review);
	}
	
	public List<FReview> getList(int num){
		return rRepository.getList(num);
	}
	
	public void reviewDelete(int rnum) {
		rRepository.reviewDelete(rnum);
	}
}