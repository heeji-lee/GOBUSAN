package com.project.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Festival {
	private int num;
	private MultipartFile uploadFile;
	private String fimg;
	private String title;
	private String p;
	private String content1;
	private String content2;
	private String writer;
	private String regdate;
	private int hitcount; //조회수
	private int replyCnt; //댓글수
}