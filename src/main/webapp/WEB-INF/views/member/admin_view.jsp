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
	           <li>회원</li>
	           <li><img class="homenav" alt="homenav" src="/busan/resources/images/angle-right.jpg"/></li>
	           <li>상세</li>
           </ul>
        </div>
    </div>
	<h1 align="center">회원 상세</h1><br>
	<div class="view">
		<div class="form-group">
			<label>ID</label>
			<input class="form-control" name="id" value="${member.id}(${member.email})" readonly="readonly">
		</div>
		<div class="form-group">
			<label>비밀번호</label>
			<input type="password" class="form-control" name="pwd" value="${member.pwd}" readonly="readonly">
		</div>
		<div class="form-group">
			<label>성별</label>
			<input class="form-control" name="gender" value="${member.gender}" readonly="readonly">
		</div>
		<div class="form-group">
			<label>주소</label>
			<input class="form-control" name="addr" value="${member.addr}" readonly="readonly">
		</div>
		<div class="form-group">
			<label>전화번호</label>
			<input class="form-control" name="tel" value="${member.tel}" readonly="readonly">
		</div><br>
		<div align="right">
			<a href="admin_list"><button data-oper="list" class="btn btn-primary">목록</button></a>
		</div>
	</div>
</section>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>