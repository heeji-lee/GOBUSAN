<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
	           <li>문의</li>
	           <li><img class="homenav" alt="homenav" src="/busan/resources/images/angle-right.jpg"/></li>
	           <li>상세</li>
           </ul>
        </div>
    </div>
	<h1 align="center">문의내용</h1><br>
	<div class="view">
		<input type="hidden" class="form-control" id="qnum" value="${quesetion.qnum}">
		<table class="table">
		<thead>
			<tr>
				<th>제목</th>
				<td>${quesetion.title}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${quesetion.name}(${quesetion.email})</td>
			</tr>
			<tr>
				<th>문의일</th>
				<td>${quesetion.regdate}</td>
			</tr>
		</thead>
		</table><br>
		<div class="form-group" style="padding: 0 30px; height: 300px;">${quesetion.content}</div><br>
		<table class="table">
		<thead>
			<tr>
				<th>파일</th>
				<td>${quesetion.qimg}</td>
			</tr>
		</thead>
		</table><br>
		<div align="right">
			<button id="btnDelete" class="btn btn-primary">삭제</button>
			<a href="admin_list"><button data-oper="list" class="btn btn-primary">목록</button></a>
		</div>
	</div>
</section>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
$("#btnDelete").click(function(){
	$.ajax({
		type:"delete",
		url:"admin_delete/"+$("#qnum").val(),
		success:function(resp){
			if(resp=="success"){
				location.href="admin_list";
			}
		}
	})
})
</script>