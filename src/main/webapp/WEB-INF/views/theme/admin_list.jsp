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
.list {
	padding: 0 25em;
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
	           <li>관리자</li>
	           <li><img class="homenav" alt="homenav" src="/busan/resources/images/angle-right.jpg"/></li>
	           <li>테마 목록</li>
           </ul>
        </div>
    </div>
    <h1 align="center">테마 목록(${count})</h1><br>
    <div class="list">
	<table class="table">
		<thead>
			<tr style="text-align: center;">
				<th>글번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td style="text-align: center;">${list.num}</td>
					<td style="text-align: center;"><a href="admin_view?num=${list.num}">${list.title}</a></td>
					<td style="width: 600px;">${list.p}</td>
					<td style="text-align: center;">${list.writer}</td>
					<td style="text-align: center;">${list.regdate}</td>
					<td style="text-align: center;">${list.hitcount}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="container">
		<ul class="pagination justify-content-center">
			<c:if test="${page.totalCount gt 0}">
				<%-- [이전] 출력 --%>
				<li class="page-item">
					<c:if test="${page.startPage gt page.pageBlock}">
						<a class="page-link" href="admin_list?strPageNum=${page.startPage - page.pageBlock}&field=${field}&word=${word}">이전</a>
					</c:if>
				</li>

				<%-- 페이지 번호 --%>
				<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}" step="1">
					<c:choose>
						<c:when test="${pageScope.i eq requestScope.pageNum}">
							<li class="page-item"><a class="page-link" href="admin_list?strPageNum=${i}&field=${field}&word=${word}">${i}</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="admin_list?strPageNum=${i}&field=${field}&word=${word}">${i}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<%-- [다음] 출력 --%>
				<li class="page-item">
					<c:if test="${page.endPage lt page.pageCount}">
						<a class="page-link" href="admin_list?strPageNum=${page.startPage + page.pageBlock}&field=${field}&word=${word}">다음</a>
					</c:if>
				</li>
			</c:if>
		</ul>
		<br>
		<div align="center">
			<form action="admin_list" method="get">
				<select name="field">
					<option value="title">제목</option>
					<option value="writer">작성자</option>
				</select>
				<input type="text" size="50" name="word">
				<button type="submit" class="btn btn-primary">검색</button>
				<a href="admin_insert"><button type="button" class="btn btn-primary">글쓰기</button></a>
			</form>
		</div>
	</div>
	</div>
</section>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>