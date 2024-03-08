package com.project.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Notice {
	private int nnum;
	private MultipartFile uploadFile;
	private String nimg;
	private String title;
	private String content;
	private String writer;
	private String regdate;
	private int hitcount; //조회수
	private int reply_cnt; //댓글수
}