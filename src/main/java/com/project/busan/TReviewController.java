package com.project.busan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.dto.TReview;
import com.project.service.TReviewService;

@RequestMapping("/treview")
@RestController
public class TReviewController {
	@Autowired
	private TReviewService tservice;
	
	@PostMapping("reviewInsert")
	public String insert(@RequestBody TReview review) {
		tservice.insert(review);
		return "success";
	}
	
	@GetMapping("reviewList")
	public List<TReview> list(int num) {
		List<TReview> clist = tservice.getList(num);
		return clist;
	}
	
	@DeleteMapping("del/{rnum}")
	@ResponseBody
	public int delete(@PathVariable("rnum") int rnum) {
		tservice.reviewDelete(rnum);
		return rnum;
	}
}