package com.project.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Quesetion {
	private int qnum;
	private MultipartFile uploadFile;
	private String qimg;
	private String name;
	private String email;
	private String title;
	private String content;
	private String regdate;
}