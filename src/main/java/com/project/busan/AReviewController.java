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

import com.project.dto.AReview;
import com.project.service.AReviewService;

@RequestMapping("/areview")
@RestController
public class AReviewController {
	@Autowired
	private AReviewService aservice;
	
	@PostMapping("reviewInsert")
	public String insert(@RequestBody AReview review) {
		aservice.insert(review);
		return "success";
	}
	
	@GetMapping("reviewList")
	public List<AReview> list(int num) {
		List<AReview> clist = aservice.getList(num);
		return clist;
	}
	
	@DeleteMapping("del/{rnum}")
	@ResponseBody
	public int delete(@PathVariable("rnum") int rnum) {
		aservice.reviewDelete(rnum);
		return rnum;
	}
}