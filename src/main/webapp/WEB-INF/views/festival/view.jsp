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
	           <li>축제</li>
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
		<div class="item">
			<ul class="menu">
				<li><a href="#" class="review">리뷰(${festival.replyCnt})</a></li>
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
		url:"/busan/freview/reviewList",
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
			fdel(rnum);
		})
	})
	.fail(function(e){
		alert("error:"+e);
	})
}

//리뷰삭제
function fdel(rnum){
	$.ajax({
		type:"delete",
		url:"/busan/freview/del/"+rnum
	})
	.done(function(resp){
		init();
	})
}

//리뷰쓰기
$("#reviewBtn").on("click",function(){
	if(${empty sessionScope.sessionId}){ 
		alert("로그인하세요.");
		location.href="/busan/member/login";
   	}else{
		var data = {
			"fnum":$("#num").val(),
			"id": $("#id").val(),
			"content":$("#msg").val()
		}
		$.ajax({
			type:"post",
			url:"/busan/freview/reviewInsert",
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