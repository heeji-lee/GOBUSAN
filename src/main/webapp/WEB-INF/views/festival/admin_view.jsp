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
.menu {
	list-style: none;
	border: 1px solid #e9e9e9;
	border-width: 1px 0px 1px 0px;
	overflow: hidden;
}
.freview {
	width: 7.5%;
	float: left;
	display: block;
	text-align: center;
	padding: 19px 0;
	font-weight: 600;
}
.view {
	padding: 0 10em;
}
#content {
	padding: 2em 29em;
	display: grid;
	grid-template-columns: 1fr 1fr;
}
</style>

<section class="ftco-section ftco-destination">
	<div style="background-image: url('/busan/resources/images/축제.jpg'); height: 320px;"></div>
	<div class="navbox">
        <div class="left">
           <ul class="navbar">
          	   <li><img class="home" alt="home" src="/busan/resources/images/home.jpg"/></li>
	           <li>home</li>
	           <li><img class="homenav" alt="homenav" src="/busan/resources/images/angle-right.jpg"/></li>
	           <li>관리자</li>
	           <li><img class="homenav" alt="homenav" src="/busan/resources/images/angle-right.jpg"/></li>
	           <li>축제 상세</li>
           </ul>
        </div>
    </div>
	<div class="view">
		<input type="hidden" class="form-control" id="id" value="${sessionId}">
		<input type="hidden" class="form-control" id="num" value="${festival.num}">
		<h1 align="center">${festival.title}</h1>
		<p align="center">${festival.p}</p><br>
		<div class="form-group" align="center">
			<img src="/busan/resources/upload/${festival.fimg}" width="800" height="500">
		</div>
		<div class="form-group" id="content" align="left">
			<div>${festival.content1}</div>
			<h5><b>교통정보</b></h5><br>
			<div>${festival.content2}</div>
		</div>
		<div align="right">
			<a href="admin_update?num=${festival.num}"><button type="button" class="btn btn-primary">수정</button></a>
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
		url:"admin_delete/"+$("#num").val(),
		success:function(resp){
			if(resp=="success"){
				location.href="admin_list";
			}
		}
	})
})
</script>