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
	<div style="background-image: url('/busan/resources/images/쉼터.jpg'); height: 320px;"></div>
	<div class="navbox">
        <div class="left">
           <ul class="navbar">
          	   <li><img class="home" alt="home" src="/busan/resources/images/home.jpg"/></li>
	           <li>home</li>
	           <li><img class="homenav" alt="homenav" src="/busan/resources/images/angle-right.jpg"/></li>
	           <li>공지사항</li>
	           <li><img class="homenav" alt="homenav" src="/busan/resources/images/angle-right.jpg"/></li>
	           <li>수정</li>
           </ul>
        </div>
    </div>
	<h1 align="center">공지 수정</h1><br>
	<div class="update">
		<form action="admin_update" method="post" id="frm" enctype="multipart/form-data">
			<div class="form-group">
				<label>글번호</label>
				<input class="form-control" name="nnum" value="${notice.nnum}" readonly="readonly">
			</div>
			<div class="form-group">
				<label>작성자</label>
				<input class="form-control" name="writer" value="${notice.writer}">
			</div>
			<div class="form-group">
				<label>제목</label>
				<input class="form-control" name="title" value="${notice.title}">
			</div>
			<div class="form-group">
				<label>내용</label>
				<textarea class="form-control" rows="2" name="content">${notice.content}</textarea>
			</div>
			<div class="form-group">
				<label>파일</label>
				<input class="form-control" name="nimg" value="${notice.nimg}" readonly="readonly"><br>
				<img src="/busan/resources/upload/${notice.nimg}" width="420" height="320">
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