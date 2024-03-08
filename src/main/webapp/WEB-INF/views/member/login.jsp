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
.login {
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
	           <li>로그인</li>
	          </ul>
	       </div>
	   </div>
	<h1 align="center">로그인</h1><br>
	<div class="login">
	  <form action="login">
	    <div class="form-group">
	      <input type="text" class="form-control" id="id" placeholder="아이디">
	    </div>
	    <div class="form-group">
	      <input type="password" class="form-control" id="pwd" placeholder="비밀번호">
	    </div>
	    <div class="form-group form-check">
	      <label class="form-check-label">
	        <input class="form-check-input" type="checkbox" name="remember">로그인 상태 유지
	      </label>
	    </div>
	    <div class="form-group text-right">
	      <button type="submit" id="btnLogin" class="btn btn-primary">로그인</button>
	    </div>
	  </form>
	</div>
</section>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
$("#btnLogin").click(function(){
   if($("#id").val()==""){
      alert("아이디를 입력하세요");
      return false;
   }
   if($("#pwd").val()==""){
	      alert("비밀번호를 입력하세요");
	      return false;
	   }
   $.ajax({
      type:"post",
      url:"loginCheck",
      data:{"id":$("#id").val(),"pwd":$("#pwd").val()}
   })
   .done(function(resp){
      if(resp=="success"){
         location.href="/busan/";
      }else{
         alert("가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.");
         $("#pwd").val("")
      }
   })
   .fail(function(e){
      alert("실패:"+e)
   })
})
</script>