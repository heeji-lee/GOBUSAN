<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
.insert {
	border: 1px solid #e9e9e9;
	padding: 2em;
	margin: 0 50em;
}
</style>

<section class="ftco-section ftco-destination">
	<div style="background-image: url('/busan/resources/images/테마.jpg'); height: 320px;"></div>
	<div class="navbox">
        <div class="left">
           <ul class="navbar">
          	   <li><img class="home" alt="home" src="/busan/resources/images/home.jpg"/></li>
	           <li>home</li>
	           <li><img class="homenav" alt="homenav" src="/busan/resources/images/angle-right.jpg"/></li>
	           <li>글쓰기</li>
	           <li><img class="homenav" alt="homenav" src="/busan/resources/images/angle-right.jpg"/></li>
	           <li>테마</li>
           </ul>
        </div>
    </div>
	<h1 align="center">테마 글쓰기</h1><br>
	<div class="insert">
	<form action="admin_insert" method="post" id="frm" enctype="multipart/form-data">
		<div class="form-group">
			<label for="writer">작성자</label>
			<input type="text" class="form-control" id="writer" placeholder="작성자 입력" name="writer">
		</div>
		<div class="form-group">
			<label for="title">제목</label>
			<input type="text" class="form-control" id="title" placeholder="제목 입력" name="title">
		</div>
		<div class="form-group">
			<label for="p">부제목</label>
			<input type="text" class="form-control" id="p" placeholder="부제목 입력" name="p">
		</div>
		<div class="form-group">
			<label for="content">내용</label>
			<textarea class="form-control" rows="3" id="content" placeholder="내용 입력" name="content"></textarea>
		</div>
		<div class="form-group">
			<label for="timg">파일</label>
			<input type="file" class="form-control" id="uploadFile" name="uploadFile">
		</div>
		<div class="form-group text-right">
			<button type="submit" class="btn btn-primary">글쓰기</button>
			<a href="admin_list"><button type="button" class="btn btn-primary">목록</button></a>
		</div>
	</form>
	</div>
</section>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>