<%@page import="com.model.CartDTO"%>
<%@page import="com.model.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
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
<title>Header</title>
</head>

<body>
	<%
		MemberDTO info2 = (MemberDTO) session.getAttribute("info");
	ArrayList<CartDTO> clist = (ArrayList<CartDTO>)session.getAttribute("clist");
	%>
	
	<!-- 소개탭 -->
		<div class="py-1 bg-primary">
			<div class="container">
			<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
				<div class="col-lg-12 d-block">
					<div class="row d-flex">
						<div class="col-md pr-4 d-flex topper align-items-center">
							<div
								class="icon mr-2 d-flex justify-content-center align-items-center">
								<span class="icon-phone2"></span>
							</div>
							<span class='text'> TEL : 062-655-3509</span>
						</div>
						<div class="col-md pr-4 d-flex topper align-items-center">
							<div
								class="icon mr-2 d-flex justify-content-center align-items-center">
								<span class="icon-paper-plane"></span>
							</div>
							<span class='text'> E-Mail : SMHRD@SMHRD.OR.KR</span>
						</div>
						<div
							class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
							<span class="text"> Fresh foods for your dinner </span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 메뉴탭 -->
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="main1.jsp">2차프로젝트ㅋ</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="main1.jsp"
						class="nav-link">Home</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="shop.html" id="dropdown04"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">전체상품</a>
						<div class="dropdown-menu" aria-labelledby="dropdown04">
							<a class="dropdown-item" href="./itemView_controller">전체 상품</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="VF"%>">과일·채소류</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="SF"%>">해·수산물류</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="MP"%>">정육·알·육가공품류</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="SC"%>">향신료·양념류</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="RS"%>">가공·간편식류</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="GD"%>">곡물·견과류</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="MI"%>">유제품류</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="SS"%>">면·가루·유지류</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="FO"%>">반찬류</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="DR"%>">음료·주류</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="NA"%>">자연산물</a>
						</div></li>
					<li class="nav-item"><a href="about.jsp" class="nav-link">레시피</a></li>
					<li class="nav-item"><a href="blog.jsp" class="nav-link">베스트</a></li>
				

					<li class="nav-item cta cta-colored"><a href="wishlist.jsp"
						class="nav-link"><span class="icon-shopping_cart"></span>
						<%if(clist!= null){ %>
						[<%=clist.size()%>]
						<%}else{ %>
						[0]<%} %></a></li>
					<ul class="dan2">
						<li>
							<div class="col-md pr-4 d-flex topper align-items-center ">
								<!-- <div class="col-md-5 pr-4 d-flex topper align-items-center"></div> -->

								<%
									if (info2 != null) {
								%>
								<div class="container1" text-align=center fot-size=15>
									<%
										if (info2.getMember_id().equals("admin")) {
									%>
									<div class="text item1">
										<a href="admin.jsp">관리자페이지</a>
									</div>
									<div class="text item3">
										<a href="Logout">로그아웃</a>
									</div>
									<%
										}
									%>
									<div class="text item2" style="color: black;">
										<%=info2.getName()%>님</a>
									</div>
									<div class="text item2">
										<a href="mypage.jsp">마이페이지</a>
									</div>
									<div class="text item3">
										<a href="Logout"> 로그아웃</a>
									</div>
									<div class="text item4">
										<a href="member.html"> 고객센터</a>
									</div>
								</div>
								<%
									} else {
								%>
								<div class="container2" text-align=center fot-size=15>
									<div class="text" id="item5">
										<a href="join.jsp">회원가입</a>
									</div>
									<div class="text item6">
										<a href="login.jsp">로그인</a>
									</div>
									<div class="text item7">
										<a href="member.html">고객센터</a>
									</div>
								</div>
								<%
									}
								%>
							
						</li>
						<ul class="dan1">
							<li class="search1"><div class="search">
									<form action="searchWord_controller">
										<input name="sword" type="text" id="" value=""
											required="required" label="검색어" class="inp_search"> <input
											type="image"
											src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png"
											class="btn_search" position=absolute>
									</form>
								</div></li>
						</ul>
					</ul>
			</div>
			</ul>
		</div>
		</div>
		<br>
	</nav>
	<!-- END nav -->
	
</body>
</html>