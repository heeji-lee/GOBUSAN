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
.review {
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
	           <li>관광지 상세</li>
           </ul>
        </div>
    </div>
	<div class="view">
		<input type="hidden" class="form-control" id="id" value="${sessionId}">
		<input type="hidden" class="form-control" id="num" value="${attraction.num}">
		<h1 align="center">${attraction.title}</h1>
		<p align="center">${attraction.p}</p><br>
		<div class="form-group" align="center">
			<img src="/busan/resources/upload/${attraction.aimg}" width="800" height="500">
		</div>
		<div class="form-group" id="content" align="center" style="padding: 0 30em 0 30em;">
			<div>${attraction.content}</div>
		</div>
		<div class="item">
			<ul class="menu">
				<li><a href="#" class="review">리뷰(${attraction.replyCnt})</a></li>
			</ul>
			<div align="center">
				<textarea rows="2" cols="155" id="msg"></textarea><br>
			</div><hr>
			<div id="area"></div>
		</div>
		<div align="right">
			<button id="reviewBtn" class="btn btn-primary">리뷰쓰기</button>
			<a href="list"><button data-oper="list" class="btn btn-primary">목록</button></a>
		</div>
	</div>
</section>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
var init = function(){
	$.ajax({
		type:"get",
		url:"/busan/areview/reviewList",
		data:{"num":$("#num").val()}
	})
	.done(function(resp){
		var htmlStr="";
		$.each(resp,function(key,val){
			htmlStr+=val.id+"<br>"
			htmlStr+=val.content+"<br>"
			htmlStr+=val.regdate
			if(${sessionId eq 'admin'}){
			htmlStr+=" | "
			htmlStr+="<a data-rnum="+val.rnum+">삭제</a>"
			}
			htmlStr+="<hr>"
		})
		$("#area").html(htmlStr);
		$("#area").on("click","a",function(){
			var rnum=$(this).data("rnum");
			adel(rnum);
		})
	})
	.fail(function(e){
		alert("error:"+e);
	})
}

function adel(rnum){
	$.ajax({
		type:"delete",
		url:"/busan/areview/del/"+rnum
	})
	.done(function(resp){
		init();
	})
}

$("#reviewBtn").on("click",function(){
	if(${empty sessionScope.sessionId}){ 
		alert("로그인하세요.");
		location.href="/busan/member/login";
   	}else{
		var data = {
			"anum":$("#num").val(),
			"id": $("#id").val(),
			"content":$("#msg").val()
		}
		$.ajax({
			type:"post",
			url:"/busan/areview/reviewInsert",
			contentType:'application/json;charset=utf-8',
			data:JSON.stringify(data)
		})
		.done(function(resp){
			init();
		})
   	}
});

init();
</script>