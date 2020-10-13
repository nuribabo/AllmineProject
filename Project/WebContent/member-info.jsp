<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">	
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
	
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="styleSheet" href="css/normalize.css?ver=1.20.12">
    <link rel="styleSheet" href="css/common.css?ver=1.20.12">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    
    <style type="text/css">
.container1 {
	display: flex;
	width: 250px;
	justify-content: align-items;
}

.container2 {
	display: flex;
	width: 200px;
	justify-content: align-items;
}

.dan2 {
	list-style: none;
	padding-left: 0px;
}

.dan1 {
	list-style: none;
}

.btn_search {gnb .gnb_search .btn_search { position:absolute;
	right: 10px;
	top: 3px;
	width: 30px;
	height: 30px;
}

#item5 {
	
}
</style>
  </head>
  <body class="goto-here">
    <%ArrayList<ProductDTO> itemlist = (ArrayList<ProductDTO>)session.getAttribute("list");	 %>
    <%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<%@ include file="header.jsp"%>
	
		
	<div class="page_aticle aticle_type2">
<div id="snb" class="snb_my">
<h2 class="tit_snb">Myinfo</h2>
<div class="inner_snb">
<ul class="list_menu">
<li class="on">
<a href="member-info.jsp">주문 내역</a>
</li>
<li>
<a href="member-edit.jsp">개인 정보 수정</a>
</li>
</ul>
</div>
</div>
<div id="viewOrderList" class="page_section section_orderlist"><div class="head_aticle"><h2 class="tit">주문 내역 <span class="tit_sub">지난 3년간의 주문 내역 조회가 가능합니다</span></h2></div> <div class="search_date"><h3 class="screen_out">기간 선택</h3><ul class="layer_search" style="display: none;"><li><a href="#none" class="on">전체기간</a></li> <li><a href="#none" data-year="2020">2020 년</a></li> <li><a href="#none" data-year="2019">2019 년</a></li> <li><a href="#none" data-year="2018">2018 년</a></li></ul></div> <ul class="list_order"> <li class="no_data">
주문내역이 없습니다.
</li></ul> <!----></div>
</div>
      	
   <%@ include file="footer.jsp"%>
    
  

  <!-- loader -->
  
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  
  
    
  </body>
</html>