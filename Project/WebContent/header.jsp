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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="styleSheet" href="css/normalize.css?ver=1.20.12">
<link rel="styleSheet" href="css/common.css?ver=1.20.12">
<link rel="styleSheet" href="css/section1.css?ver=1.21.6">

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

.dan1 .search1 .search .btn_search {
	position: absolute;
	left: 1460px;
	width: 30px;
	height: 30px;
}

#item5 {
	
}

.pass{
      width : 150px;
      height : 150px;
      position: relative;
      top: 55px;
      left : -1000px;
   }


</style>
</head>

<body>
	<%
		MemberDTO info2 = (MemberDTO) session.getAttribute("info");
	ArrayList<CartDTO> clist = (ArrayList<CartDTO>) session.getAttribute("clist");

	if (info2 != null) {
		System.out.println(clist.size());
	}
	%>


	<!-- 소개탭 -->
	
	<div class="py-1 bg-primary">
		<div class="container">
			<div
				class="row no-gutters d-flex align-items-start align-items-center px-md-0">
				<div class="col-lg-12 d-block">
					<div class="row d-flex">
						<div class="col-md pr-4 d-flex topper align-items-center">
							<div
								class="icon mr-2 d-flex justify-content-center align-items-center">
								<span class="icon-phone2"></span>
							</div>
							<span class='text'> 전화 번호 : 062-655-3509</span>
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
							<span class="text"> 당신의 식탁을 위한 신선한 재료 </span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 메뉴탭 -->
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar" height = 100px;>
		<div class="container">
			<a class="navbar-brand" href="main1.jsp"><img src = "logo3.PNG" width =300px height = 73px></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">

				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle"
						href="./itemView_controller?name=all&page_num=<%=1%>"
						id="dropdown04" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">상품 정보</a>
						<div class="dropdown-menu" aria-labelledby="dropdown04">
							<a class="dropdown-item"
								href="./itemView_controller?name=all&page_num=<%=1%>">전체 상품</a>
							<a class="dropdown-item"
								href="./itemView_controller?name=<%="VF"%>&page_num=<%=1%>">과일·채소류</a>
							<a class="dropdown-item"
								href="./itemView_controller?name=<%="SF"%>&page_num=<%=1%>">해·수산물류</a>
							<a class="dropdown-item"
								href="./itemView_controller?name=<%="MP"%>&page_num=<%=1%>">정육·알·육가공품류</a>
							<a class="dropdown-item"
								href="./itemView_controller?name=<%="SC"%>&page_num=<%=1%>">향신료·양념류</a>
							<a class="dropdown-item"
								href="./itemView_controller?name=<%="RS"%>&page_num=<%=1%>">가공·간편식류</a>
							<a class="dropdown-item"
								href="./itemView_controller?name=<%="GD"%>&page_num=<%=1%>">곡물·견과류</a>
							<a class="dropdown-item"
								href="./itemView_controller?name=<%="MI"%>&page_num=<%=1%>">유제품류</a>
							<a class="dropdown-item"
								href="./itemView_controller?name=<%="SS"%>&page_num=<%=1%>">면·가루·유지류</a>
							<a class="dropdown-item"
								href="./itemView_controller?name=<%="FO"%>&page_num=<%=1%>">반찬류</a>
							<a class="dropdown-item"
								href="./itemView_controller?name=<%="DR"%>&page_num=<%=1%>">음료·주류</a>
							<a class="dropdown-item"
								href="./itemView_controller?name=<%="NA"%>&page_num=<%=1%>">자연산물</a>
						</div></li>
					<li class="nav-item"><a href="recipe_blog.jsp"
						class="nav-link">레시피</a></li>
					<li class="nav-item"><a
						href="best.jsp?name=all&page_num=<%=1%>" class="nav-link">베스트</a></li>

					<li class="nav-item cta cta-colored"><a href="wishlist.jsp"
						class="nav-link"><span class="icon-shopping_cart"></span> <%
 	if (clist != null) {
 %>
							[<%=clist.size()%>] <%
 	} else {
 %> [0]<%
 	}
 %></a></li>
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
										<a href="member-info.jsp">마이페이지</a>
									</div>
									<div class="text item3">
										<a href="Logout"> 로그아웃</a>
									</div>
								</div>
								<%
									} else {
								%>
								<div class="container2" text-align=center fot-size=15>
									<div class="text" id="item5">
										<a href="join2.jsp">회원가입</a>
									</div>
									<div class="text item6">
										<a href="login.jsp">로그인</a>
									</div>
								</div>
								<%
									}
								%>
							
						</li>
						
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