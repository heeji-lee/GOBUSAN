<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>GO BUSAN</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="/busan/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/busan/resources/css/animate.css">
    
    <link rel="stylesheet" href="/busan/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/busan/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/busan/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/busan/resources/css/aos.css">

    <link rel="stylesheet" href="/busan/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/busan/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/busan/resources/css/jquery.timepicker.css">
    
    <link rel="stylesheet" href="/busan/resources/css/flaticon.css">
    <link rel="stylesheet" href="/busan/resources/css/icomoon.css">
    <link rel="stylesheet" href="/busan/resources/css/style.css">
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="/busan">GO BUSAN</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span>
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active"><a href="/busan" class="nav-link">Home</a></li>
          <li class="nav-item"><a href="festival/list" class="nav-link">축제</a></li>
          <li class="nav-item"><a href="theme/list" class="nav-link">테마</a></li>
          <li class="nav-item"><a href="attraction/list" class="nav-link">관광지</a></li>
          <li class="nav-item dropdown">
      		<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        	  서비스
      		</a>
      		<div class="dropdown-menu">
		        <a class="dropdown-item" href="notice/list">공지사항</a>
		        <a class="dropdown-item" href="quesetion/insert">문의하기</a>
	     	</div>
    	  </li>        
        </ul>
      </div>
		<c:choose>
			<c:when test="${sessionId eq 'admin'}">
			  <li class="nav-item dropdown" style="list-style: none;">
	      		<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
	        	  글쓰기
	      		</a>
	      		<div class="dropdown-menu">
	      			<a class="dropdown-item" href="notice/admin_insert">공지</a>
	      			<a class="dropdown-item" href="festival/admin_insert">축제</a>
			        <a class="dropdown-item" href="theme/admin_insert">테마</a>
			        <a class="dropdown-item" href="attraction/admin_insert">관광지</a>
		     	</div>
		      </li>
		      <li class="nav-item dropdown" style="list-style: none;">
	      		<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
	        	  관리
	      		</a>
	      		<div class="dropdown-menu">
	      			<a class="dropdown-item" href="member/admin_list">회원</a>
	      			<a class="dropdown-item" href="quesetion/admin_list">문의</a>
		     	</div>
		      </li>
		    	<a href="member/logout" class="nav-link">로그아웃</a>
			</c:when>
			<c:when test="${empty sessionScope.sessionId}">
				<!-- 세션이 없을 때(비회원) -->
				<a href="member/login" class="nav-link">로그인</a>
		       	<a class="nav-link">|</a>
		       	<a href="member/join" class="nav-link">회원가입</a>
			</c:when>
			<c:otherwise>
				<!-- 세션이 있을 때(회원) -->
				<a href="member/logout" class="nav-link">로그아웃</a>
				<a class="nav-link">|</a>
				<a href="member/update" class="nav-link">개인정보변경</a>
			</c:otherwise>
		</c:choose>
    </div>
  </nav> 