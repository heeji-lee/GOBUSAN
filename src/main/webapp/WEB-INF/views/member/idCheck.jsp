<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  	<title>GO BUSAN</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="/busan/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/busan/resources/css/animate.css">
    
    <link rel="stylesheet" href="/busan/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/busan/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/busan/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/busan/resources/css/aos.css">

    <link rel="stylesheet" href="/busan/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/busan/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/busan/resources/css/jquery.timepicker.css">
    
    <link rel="stylesheet" href="/busan/resources/css/flaticon.css">
    <link rel="stylesheet" href="/busan/resources/css/icomoon.css">
    <link rel="stylesheet" href="/busan/resources/css/style.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<section class="ftco-section ftco-destination">
<div class="container" style="margin:30px">
  <h4>아이디 중복확인</h4>
  <form action="idCheck" style="margin:30px">
    <div class="form-group">
      <input type="text" class="form-control" id="id" placeholder="아이디 입력" name="id">
    </div>
    <div class="form-group text-right">
      <button type="submit" class="btn btn-primary" id="btnCheck" name="btnCheck">확인</button>
    </div>
  </form>
</div>
</section>
<script>
$("#btnCheck").click(function(){
	if($("#id").val()==""){
		alert("아이디를 입력하세요");
		return false;
	}
	$.ajax({
		type:"post",
		url:"idCheck",
		data:{"id":$("#id").val()}
	})
	.done(function(resp){
		if(resp=="success"){
			alert("사용 가능한 아이디입니다.");
			$(opener.document).find("#id").val($("#id").val());
			self.close();
		}else{
			alert("사용 불가능한 아이디입니다.");
			$("#id").val("");
		}
	})
	.fail(function(e){
		alert("error:"+e);
	})
})
</script>
</body>
</html>