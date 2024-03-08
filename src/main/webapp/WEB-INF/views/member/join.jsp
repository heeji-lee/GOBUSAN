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
.join {
	border: 1px solid #e9e9e9;
	padding: 2em;
	margin: 0 50em;
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
	           <li>회원가입</li>
	          </ul>
	       </div>
	   </div>
	<h1 align="center">회원정보입력</h1><br>
	<div class="join">
	  <form action="join" method="post" id="frm">
		<div class="row">
		  <div class="col">
		  	<label for="id">아이디</label>
		  	<input type="text" class="form-control" id="id" placeholder="아이디 입력" name="id" readonly="readonly">
		  </div>
	      <div class="col align-self-end">
			<button type="button" id="idcheckBtn" class="btn btn-primary">중복확인</button>
	      </div>
		</div>
		<div class="form-group" id="idcheck" style="margin-top:15px;"></div>
	    <div class="form-group">
	      <label for="pwd">비밀번호</label>
	      <input type="password" class="form-control" id="pwd" placeholder="비밀번호" name="pwd">
	    </div>
	    <div class="form-group">
	      <label for="pwd_check">비밀번호 재입력</label>
	      <input type="password" class="form-control" id="pwd_check" placeholder="비밀번호 재입력" name="pwd_check">
	    </div>
	    <div class="form-group" id="pwdcheck"></div>
	    <div class="form-group">
	      <label for="gender">성별</label><br>
		  <input type="radio" name="gender" value="남" checked> 남
		  <input type="radio" name="gender" value="여"> 여
	    </div>
	    <div class="form-group">
	      <label for="addr">주소</label>
	      <input type="text" class="form-control" id="addr" placeholder="주소" name="addr">
	    </div>
	    <div class="form-group">
	      <label for="tel">전화번호</label>
	      <input type="text" class="form-control" id="tel" placeholder="전화번호" name="tel">
	    </div>
	    <div class="form-group">
	      <label for="email">이메일</label>
	      <input type="email" class="form-control" id="email" placeholder="이메일" name="email" required>
	    </div>
	    <div class="form-group form-check">
	        <input class="form-check-input" type="checkbox" name="agree">개인정보 이용 및 제공에 동의합니다.
	    </div>
	    <div class="form-group text-right">
	    	<input type="submit" id="submit" value="회원가입" class="btn btn-primary">
	    </div>
	  </form>
	</div>
</section>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

<script>
$("#idcheckBtn").on("click",function(){
	window.open("idCheck","","width=700 height=500");
});

$(document).ready(function(){
	$("#id").keyup(function(){
		$("#idcheck").text("사용 가능한 아이디입니다.");
		$("#idcheck").css("color", "green");
	});
});

$(document).ready(function(){
	$("#pwd_check").keyup(function(){
		$("#pwdcheck").text(
			$("#pwd_check").val()==$("#pwd").val()?"비밀번호가 일치합니다.":"비밀번호가 불일치합니다."
		);
		$("#pwdcheck").css(
			"color",
			$("#pwd_check").val()==$("#pwd").val()?"green":"red"
		);
	});
});

$("#submit").click(function(){
	if($("#id").val()==""){
		alert("아이디를 입력하세요");
		return false;
	}
	if($("#pwd").val()==""){
		alert("비밀번호를 입력하세요");
		return false;
	}
	if($("#pwd_check").val()==""){
		alert("비밀번호를 입력하세요");
		return false;
	}
	if($("#pwd_check").val()!=$("#pwd").val()){
		return false;
	}
})
</script>