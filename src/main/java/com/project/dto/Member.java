package com.project.dto;

import lombok.Data;

@Data
public class Member {
	private String id;
	private String pwd;
	private String gender;
	private String addr;
	private String tel;
	private String email;
}