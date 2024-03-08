<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<style>
.navbar {
	list-style: none;
	float: left;
}
.home {
	width: 20px;
	height: 20px;
}
.homenav {
	width: 10px;
	height: 10px;
}
h1 {
	padding: 2em 0 0 0;
}
.view {
	padding: 0 10em;
}
th {
	padding: 12px 15px;
    background: #f8f8f8;
    font-weight: 600;
    width: 35em;
    text-align: center;
}
td {
	padding: 12px 15px;
    border-bottom: 1px solid #d9d9d9;
}
</style>

<section class="ftco-section ftco-destination">
	<div style="background-image: url('/busan/resources/images/쉼터.jpg'); height: 320px;"></div>
	<div class="navbox">
        <div class="left">
           <ul class="navbar">
          	   <li><img class="home" alt="home" src="/busan/resources/images/home.jpg"/></li>
	           <li>home</li>
	           <li><img class="homenav" alt="homenav" src="/busan/resources/images/angle-right.jpg"/></li>
	           <li>공지사항</li>
           </ul>
        </div>
    </div>
	<h1 align="center">공지</h1><br>
	<div class="view">
		<input type="hidden" class="form-control" name="nnum" value="${notice.nnum}">
		<table class="table">
		<thead>
			<tr>
				<th>제목</th>
				<td>${notice.title}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${notice.writer}</td>
			</tr>
		</thead>
		</table><br>
		<div class="form-group" align="center" style="padding: 0 30px; height: 350px;">${notice.content}</div><br>
		<table class="table">
		<thead>
			<tr>
				<th>파일</th>
				<td>${notice.nimg}</td>
			</tr>
		</thead>
		</table><br>
		<div align="right">
			<a href="list"><button data-oper="list" class="btn btn-primary">목록</button></a>
		</div>
	</div>
</section>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>