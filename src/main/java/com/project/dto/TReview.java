package com.project.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

import lombok.Data;

@Data
public class TReview {
	private int rnum;
	private String id;
	private String content;
	@JsonFormat(shape = Shape.STRING, 
			pattern = "yyyy-MM-dd",timezone = "Asia/Seoul")
	private Date regdate;
	private int tnum;
}