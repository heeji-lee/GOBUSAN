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
	padding-top: 2em;
}
.theme {
	list-style: none;
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	gap: 30px;
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
	           <li>테마</li>
           </ul>
        </div>
    </div>
	<h1 align="center">테마</h1>
	<div align="center">
		<form method="get">
			<input type="text" size="50" name="word">
			<button type="submit">검색</button>
		</form>
	</div>
	<section class="ftco-section ftco-destination">
		<div class="item">
		   <ul class="theme">
				<li>
	            <div>
	            	<img alt="강다니엘코스" src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191226144955936_thumbL">
	                <div>
	                    <h3>강다니엘코스</h3>
	                    <a href="http://apis.data.go.kr/6260000/RecommendedService/getRecommendedKr?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&UC_SEQ=305" target="_self" title="강다니엘코스">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="부산벚꽃투어" src="https://www.visitbusan.net/uploadImgs/files/cntnts/20200117182325604_thumbL">
	                <div>
	                    <h3>부산벚꽃투어</h3>
	                    <a href="http://apis.data.go.kr/6260000/RecommendedService/getRecommendedKr?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&UC_SEQ=306" target="_self" title="부산벚꽃투어">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="유채꽃명소" src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191226151124965_thumbL">
	                <div>
	                    <h3>유채꽃명소</h3>
	                    <a href="http://apis.data.go.kr/6260000/RecommendedService/getRecommendedKr?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&UC_SEQ=307" target="_self" title="유채꽃명소">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="무장애여행" src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191226173045905_thumbL">
	                <div>
	                    <h3>무장애여행</h3>
	                    <a href="http://apis.data.go.kr/6260000/RecommendedService/getRecommendedKr?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&UC_SEQ=310" target="_self" title="무장애여행">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="당일코스 1" src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191226192439590_thumbL">
	                <div>
	                    <h3>당일코스 1</h3>
	                    <a href="http://apis.data.go.kr/6260000/RecommendedService/getRecommendedKr?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&UC_SEQ=317" target="_self" title="당일코스 1">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="당일코스 2" src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191226193908464_thumbL">
	                <div>
	                    <h3>당일코스 2</h3>
	                    <a href="http://apis.data.go.kr/6260000/RecommendedService/getRecommendedKr?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&UC_SEQ=318" target="_self" title="당일코스 2">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="부산은 바다지, 부산바다 당일치기" src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191226194803465_thumbL">
	                <div>
	                    <h3>부산은 바다지, 부산바다 당일치기</h3>
	                    <a href="http://apis.data.go.kr/6260000/RecommendedService/getRecommendedKr?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&UC_SEQ=319" target="_self" title="부산은 바다지, 부산바다 당일치기">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="1박2일코스 1" src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191226195857630_thumbL">
	                <div>
	                    <h3>1박2일코스 1</h3>
	                    <a href="http://apis.data.go.kr/6260000/RecommendedService/getRecommendedKr?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&UC_SEQ=320" target="_self" title="1박2일코스 1">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="1박2일코스 2" src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191226201225416_thumbL">
	                <div>
	                    <h3>1박2일코스 2</h3>
	                    <a href="http://apis.data.go.kr/6260000/RecommendedService/getRecommendedKr?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&UC_SEQ=321" target="_self" title="1박2일코스 2">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="1박2일코스 3" src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191226201936632_thumbL">
	                <div>
	                    <h3>1박2일코스 3</h3>
	                    <a href="http://apis.data.go.kr/6260000/RecommendedService/getRecommendedKr?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&UC_SEQ=322" target="_self" title="1박2일코스 3">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       </ul>
		</div>
	</section>
</section>
        
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>