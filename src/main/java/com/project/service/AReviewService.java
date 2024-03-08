package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dto.AReview;
import com.project.repository.AReviewRepository;

@Service
public class AReviewService {
	@Autowired
	public AReviewRepository rRepository;
	
	public void insert(AReview review) {
		rRepository.insert(review);
	}
	
	public List<AReview> getList(int num){
		return rRepository.getList(num);
	}
	
	public void reviewDelete(int rnum) {
		rRepository.reviewDelete(rnum);
	}
}