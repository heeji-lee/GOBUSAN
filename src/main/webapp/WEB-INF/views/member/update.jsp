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
.update {
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
	           <li>개인정보변경</li>
	          </ul>
			</div>
	     </div>
	  <h1 align="center">개인정보변경</h1><br>
	  <div class="update">
		  <form action="update" method="post" id="frm">
			<div class="form-group" style="margin-top:15px;">
			  <label for="id">아이디</label>
			  <input type="text" class="form-control" id="id" name="id" value="${member.id}" readonly="readonly">
			</div>
		    <div class="form-group" style="margin-top:15px;">
		      <label for="pwd">비밀번호</label>
		      <input type="password" class="form-control" id="pwd" placeholder="비밀번호" name="pwd">
		    </div>
		    <div class="form-group">
		      <label for="pwd_check">비밀번호 재입력</label>
		      <input type="password" class="form-control" id="pwd_check" placeholder="비밀번호 재입력" name="pwd_check">
		    </div>
		    <div class="form-group">
		      <label for="gender">성별</label><br>
			  <input type="radio" name="gender" value="남"> 남
			  <input type="radio" name="gender" value="여"> 여
		    </div>
		    <div class="form-group">
		      <label for="addr">주소</label>
		      <input type="text" class="form-control" id="addr" name="addr" value="${member.addr}">
		    </div>
		    <div class="form-group">
		      <label for="tel">휴대폰 번호</label>
		      <input type="text" class="form-control" id="tel" name="tel" value="${member.tel}">
		    </div>
		    <div class="form-group">
		      <label for="email">이메일</label>
		      <input type="text" class="form-control" id="email" name="email" value="${member.email}">
		    </div>
		    <div class="form-group text-left">
		    	<a id="Del">탈퇴하기</a>
		    </div>
		    <div align="center">
		    	<button type="submit" id="btnUpdate" class="btn btn-primary">저장</button>
		    	<button type="reset" id="btnReset" class="btn btn-primary">취소</button>
    		</div>
		  </form>
	  </div>
</section>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

<script>
if ("${member.gender}" == "남") {
	$("input:radio[value='남']").prop("checked", true);
} else {
	$("input:radio[value='여']").prop("checked", true);
}

$("#btnUpdate").click(function(){
	if($("#pwd").val()==""){
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if($("#pwd_check").val()==""){
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if($("#pwd_check").val()!=$("#pwd").val()){
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
	var data={
		"id":$("#id").val(),
		"pwd":$("#pwd").val(),
		"gender":$(':radio[name="gender"]:checked').val(),
		"addr":$("#addr").val(),
		"tel":$("#tel").val(),
		"email":$("#email").val(),
	}
	$.ajax({
		type:"put",
		url:"update",
		contentType:'application/json;charset=utf-8',
		data:JSON.stringify(data)
	})
	.done(function(resp){
		if(resp=="success"){
			alert("개인정보가 변경되었습니다.");
			alert("로그인 화면으로 이동합니다.");
			location.href="login";
		}else{
			alert("개인정보 변경에 실패하였습니다.");
		}
	})
})

$("#Del").click(function(){
	if($("#pwd").val()==""){
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if($("#pwd_check").val()==""){
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if($("#pwd_check").val()!=$("#pwd").val()){
		alert("비밀번호가 불일치합니다.");
		return false;
	}
	if(confirm("정말 탈퇴할까요?")){
		location.href="delete";
	}
})
</script>