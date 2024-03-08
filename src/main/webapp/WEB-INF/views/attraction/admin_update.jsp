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
.update {
	padding: 0 10em;
}
</style>

<section class="ftco-section ftco-destination">
	<div style="background-image: url('/busan/resources/images/관광지.jpg'); height: 320px;"></div>
	<div class="navbox">
        <div class="left">
           <ul class="navbar">
          	   <li><img class="home" alt="home" src="/busan/resources/images/home.jpg"/></li>
	           <li>home</li>
	           <li><img class="homenav" alt="homenav" src="/busan/resources/images/angle-right.jpg"/></li>
	           <li>관광지</li>
	           <li><img class="homenav" alt="homenav" src="/busan/resources/images/angle-right.jpg"/></li>
	           <li>수정</li>
           </ul>
        </div>
    </div>
	<h1 align="center">관광지 수정</h1><br>
	<div class="update">
		<form action="admin_update" method="post" id="frm" enctype="multipart/form-data">
			<div class="form-group">
				<label>글번호</label>
				<input class="form-control" name="num" value="${attraction.num}" readonly="readonly">
			</div>
			<div class="form-group">
				<label>작성자</label>
				<input class="form-control" name="writer" value="${attraction.writer}">
			</div>
			<div class="form-group">
				<label>제목</label>
				<input class="form-control" name="title" value="${attraction.title}">
			</div>
			<div class="form-group">
				<label for="p">부제목</label>
				<input class="form-control" name="p" value="${attraction.p}">
			</div>
			<div class="form-group">
				<label>내용</label>
				<textarea class="form-control" rows="2" name="content">${attraction.content}</textarea>
			</div>
			<div class="form-group">
				<label>파일</label>
				<input class="form-control" name="aimg" value="${attraction.aimg}" readonly="readonly"><br>
				<img src="/busan/resources/upload/${attraction.aimg}" width="420" height="320">
			</div>
			<div align="right">
				<button type="submit" class="btn btn-primary">수정</button>
				<button type="reset" class="btn btn-primary">취소</button>
			</div>
		</form>
	</div>
</section>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>