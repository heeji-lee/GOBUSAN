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
.attraction {
	list-style: none;
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	gap: 30px;
}
img {
	width: 420px;
	height: 320px;
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
           </ul>
        </div>
    </div>
	<h1 align="center">관광지</h1>
	<div align="center">
		<form method="get">
			<input type="text" size="50" name="word">
			<button type="submit">검색</button>
		</form>
	</div>
	<section class="ftco-section ftco-destination">
		<div class="item">
			<ul class="attraction">
	 			<li>
	            <div>
	            	<img alt="부산항대교" src="http://www.haeundae.go.kr/upload_data/board_data/BBS_0000103/156593216663395.jpg">
	                <div>
	                    <h3>부산항대교</h3>
	                    <a href="http://apis.data.go.kr/3330000/HeaundaeTourAttrInfoService/getTourAttrList?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&trrsrtNm=부산항대교" target="_self" title="부산항대교">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="해운대해수욕장" src="http://www.haeundae.go.kr/upload_data/board_data/BBS_0000050/157915039396198.png">
	                <div>
	                    <h3>해운대해수욕장</h3>
	                    <a href="http://apis.data.go.kr/3330000/HeaundaeTourAttrInfoService/getTourAttrList?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&trrsrtNm=해운대해수욕장" target="_self" title="해운대해수욕장">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="송정해수욕장" src="http://www.haeundae.go.kr/upload_data/board_data/BBS_0000050/157915039395975.png">
	                <div>
	                    <h3>송정해수욕장</h3>
	                    <a href="http://apis.data.go.kr/3330000/HeaundaeTourAttrInfoService/getTourAttrList?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&trrsrtNm=송정해수욕장" target="_self" title="송정해수욕장">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="동백섬" src="https://previews.123rf.com/images/yooranpark/yooranpark1707/yooranpark170700133/81753186-2017-%EB%85%84-6-%EC%9B%94-21-%EC%9D%BC-%EB%88%84%EB%A6%AC-%EB%A7%88%EB%A3%A8-apec%EC%9D%80-%EB%B6%80%EC%82%B0-%EB%8F%99%EB%B0%B1%EC%84%AC-%EB%8F%99%EB%B0%B1%EC%84%AC-%EC%97%90-%EC%9C%84%EC%B9%98%ED%95%98%EA%B3%A0-%EC%9E%88%EC%8A%B5%EB%8B%88%EB%8B%A4-5.jpg">
	                <div>
	                    <h3>동백섬</h3>
	                    <a href="http://apis.data.go.kr/3330000/HeaundaeTourAttrInfoService/getTourAttrList?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&trrsrtNm=동백섬" target="_self" title="동백섬">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="달맞이길" src="https://www.dbeway.co.kr/_UPLOAD/IMAGE/TravelPoint/TravelMiddle/2016/12/b39rhzIuYmCfbDTQ.JPG">
	                <div>
	                    <h3>달맞이길</h3>
	                    <a href="http://apis.data.go.kr/3330000/HeaundaeTourAttrInfoService/getTourAttrList?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&trrsrtNm=달맞이길" target="_self" title="달맞이길">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="영화의거리" src="http://www.haeundae.go.kr/upload_data/board_data/BBS_0000103/154224186782070.jpg">
	                <div>
	                    <h3>영화의거리</h3>
	                    <a href="http://apis.data.go.kr/3330000/HeaundaeTourAttrInfoService/getTourAttrList?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&trrsrtNm=영화의거리" target="_self" title="영화의거리">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="APEC나루공원" src="http://www.haeundae.go.kr/upload_data/board_data/BBS_0000103/154224213120913.jpg">
	                <div>
	                    <h3>APEC나루공원</h3>
	                    <a href="http://apis.data.go.kr/3330000/HeaundaeTourAttrInfoService/getTourAttrList?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&trrsrtNm=APEC나루공원" target="_self" title="APEC나루공원">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="부산아쿠아리움" src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190724_148%2F15639568258115E9kB_JPEG%2F10.jpg">
	                <div>
	                    <h3>부산아쿠아리움</h3>
	                    <a href="http://apis.data.go.kr/3330000/HeaundaeTourAttrInfoService/getTourAttrList?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&trrsrtNm=부산아쿠아리움" target="_self" title="부산아쿠아리움">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="장산" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNzExMTVfMTcg%2FMDAxNTEwNzMxODQzMzIy.c5vxcPwdKyHdZ2LfHzXY9CwSnwqPEfybiNIJeO_glnkg.MzP8Wp-1r8WfnqTIpDyPy_4g61PCmpthF_YZ0k-saH0g.JPEG.busaninnews%2F1.jpg%231000x563">
	                <div>
	                    <h3>장산</h3>
	                    <a href="http://apis.data.go.kr/3330000/HeaundaeTourAttrInfoService/getTourAttrList?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&trrsrtNm=장산" target="_self" title="장산">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       		<li>
	            <div>
	            	<img alt="동해남부선 옛길" src="http://www.haeundae.go.kr/upload_data/board_data/BBS_0000103/154224348265568.jpg">
	                <div>
	                    <h3>동해남부선 옛길</h3>
	                    <a href="http://apis.data.go.kr/3330000/HeaundaeTourAttrInfoService/getTourAttrList?serviceKey=ViNhf9KFHrhlepP82G2riFCwzySQxL4juLIE5itFGrf8lpCixgdypSpsC930g7033hqAO8PKM99K5eNbt13uSA%3D%3D&resultType=JSON&trrsrtNm=동해남부선 옛길" target="_self" title="동해남부선 옛길">자세히보기</a>
	                </div>
	            </div>
	       		</li>
	       	</ul>
		</div>
	</section>
</section>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>