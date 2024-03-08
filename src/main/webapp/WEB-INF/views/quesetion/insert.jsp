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
.quesetion {
	padding: 0 30em;
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
	           <li>문의하기</li>
           </ul>
        </div>
    </div>
    <h1 align="center">문의하기</h1><br>
    <div class="quesetion">
    <form action="insert" method="post" id="frm" enctype="multipart/form-data">
		<div class="row form-group">
			<div class="col-md-12">
				<label class="text-black" for="name">이름</label>
				<input type="text" class="form-control" id="name" placeholder="이름 입력" name="name">
			</div>
		</div>
		<div class="row form-group">
			<div class="col-md-12">
				<label class="text-black" for="email">이메일</label>
				<input type="email" class="form-control" id="email" placeholder="이메일 입력" name="email">
			</div>
		</div>
		<div class="row form-group">
			<div class="col-md-12">
				<label class="text-black" for="title">제목</label>
				<input type="text" class="form-control" id="title" placeholder="제목 입력" name="title">
			</div>
		</div>
		<div class="row form-group">
			<div class="col-md-12">
				<label class="text-black" for="content">내용</label>
				<textarea class="form-control" cols="30" rows="7" id="content" placeholder="문의 내용 입력" name="content"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label for="qimg">파일</label>
			<input type="file" class="form-control" id="uploadFile" name="uploadFile">
		</div>
		<div align="right">
			<input type="submit" value="보내기" class="btn btn-primary">
			<input type="reset" value="취소" class="btn btn-primary">
		</div>
	</form>
	</div>
</section>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>