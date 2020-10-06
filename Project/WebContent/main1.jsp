
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.ProductDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Insert title here</title>
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

.dan1 .search1 .search .btn_search {
	position: absolute;
	left: 1460px;
	width: 30px;
	height: 30px;
}

#item5 {
	
}
</style>

</head>
<body class="goto-here">
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	ArrayList<ProductDTO> itemlist = (ArrayList<ProductDTO>) session.getAttribute("list");
	%>


	<%@ include file="header.jsp"%>
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
					<li class="nav-item"><a href="contact.jsp" class="nav-link">알뜰쇼핑</a></li>

					<li class="nav-item cta cta-colored"><a href="cartView_controller"
						class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>
					<ul class="dan2">
						<li>
							<div class="col-md pr-4 d-flex topper align-items-center ">
								<!-- <div class="col-md-5 pr-4 d-flex topper align-items-center"></div> -->

								<%
									if (info != null) {
								%>
								<div class="container1" text-align=center fot-size=15>
									<%
										if (info.getMember_id().equals("admin")) {
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
										<%=info.getName()%>님</a>
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
	
	<section class="ftco-section">

		<div class="container">
			<div class="row no-gutters ftco-services">
				<div
					class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services mb-md-0 mb-4">
						<div
							class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
							<span class="flaticon-shipped"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">Super Sale</h3>
							<span>discount of 5 to 30 percent</span>
						</div>
					</div>
				</div>
				<div
					class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services mb-md-0 mb-4">
						<div
							class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
							<span class="flaticon-diet"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">Always Fresh</h3>
							<span>Product well package</span>
						</div>
					</div>
				</div>
				<div
					class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services mb-md-0 mb-4">
						<div
							class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
							<span class="flaticon-award"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">Superior Quality</h3>
							<span>Quality Products</span>
						</div>
					</div>
				</div>
				<div
					class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services mb-md-0 mb-4">
						<div
							class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
							<span class="flaticon-customer-service"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">Support</h3>
							<span>24/7 Support</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-category ftco-no-pt">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-6 order-md-last align-items-stretch d-flex">
							<div
								class="category-wrap-2 ftco-animate img align-self-stretch d-flex"
								style="background-image: url(images/category.jpg);">
								<div class="text text-center">
									<h2>Vegetables</h2>
									<p>Protect the health of every home</p>
									<p>
										<a href="#" class="btn btn-primary">Shop now</a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div
								class="category-wrap ftco-animate img mb-4 d-flex align-items-end"
								style="background-image: url(images/category-1.jpg);">
								<div class="text px-3 py-1">
									<h2 class="mb-0">
										<a href="#">Fruits</a>
									</h2>
								</div>
							</div>
							<div
								class="category-wrap ftco-animate img d-flex align-items-end"
								style="background-image: url(images/category-2.jpg);">
								<div class="text px-3 py-1">
									<h2 class="mb-0">
										<a href="#">Vegetables</a>
									</h2>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div
						class="category-wrap ftco-animate img mb-4 d-flex align-items-end"
						style="background-image: url(images/category-3.jpg);">
						<div class="text px-3 py-1">
							<h2 class="mb-0">
								<a href="#">Juices</a>
							</h2>
						</div>
					</div>
					<div class="category-wrap ftco-animate img d-flex align-items-end"
						style="background-image: url(images/category-4.jpg);">
						<div class="text px-3 py-1">
							<h2 class="mb-0">
								<a href="#">Dried</a>
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	

	<!--//특가상품  -->
		<section class="ftco-section img"
			style="background-image: url(images/bg_3.jpg);">
			<div class="container">
				<div class="row justify-content-end">
					<div
						class="col-md-6 heading-section ftco-animate deal-of-the-day ftco-animate">
						<span class="subheading">Best Price For You</span>
						<h2 class="mb-4">Deal of the day</h2>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia</p>
						<h3>
							<a href="#">Spinach</a>
						</h3>
						<span class="price">$10 <a href="#">now $5 only</a></span>
						<div id="timer" class="d-flex mt-5">
							<div class="time" id="days"></div>
							<div class="time pl-3" id="hours"></div>
							<div class="time pl-3" id="minutes"></div>
							<div class="time pl-3" id="seconds"></div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 상품리스트 컨테이너 시작-->
		<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<span class="subheading">How about it?</span>
					<!-- 여기다가 추천알고리즘 랜덤으로 뿌려놔도 될 것 같음 -->
					<h2 class="mb-4">새로 나온 상품</h2>
					<p>올마인이 엄선해서 골라 진열한 새로운 상품들을 소개합니다.</p>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<%
					if (itemlist != null) {
				%>
				<%
					for (int i = 0; i < itemlist.size(); i++) {
				%>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="product-single.jsp" class="img-prod"><img
							class="img-fluid" src=<%=itemlist.get(i).getIMG_ADDR()%>
							alt="Colorlib Template"> <span class="status"><%=itemlist.get(i).getDiscount_rate()%>%</span>
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="product-single.jsp"><%=itemlist.get(i).getProduct_name()%></a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span class="mr-2 price-dc"><%=itemlist.get(i).getPrice()%></span>
										<span class="price-sale">할인가격</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="#"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="#"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
					}
				%>
				<%
					}
				%>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="#" class="img-prod"><img class="img-fluid"
							src="images/product-2.jpg" alt="Colorlib Template">
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="#">Strawberry</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span>$120.00</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="#"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="#"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="#" class="img-prod"><img class="img-fluid"
							src="images/product-3.jpg" alt="Colorlib Template">
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="#">Green Beans</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span>$120.00</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="#"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="#"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="#" class="img-prod"><img class="img-fluid"
							src="images/product-4.jpg" alt="Colorlib Template">
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="#">Purple Cabbage</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span>$120.00</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="#"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="#"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="#" class="img-prod"><img class="img-fluid"
							src="images/product-5.jpg" alt="Colorlib Template"> <span
							class="status">30%</span>
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="#">Tomatoe</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span class="mr-2 price-dc">$120.00</span><span
											class="price-sale">$80.00</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="#"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="#"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="#" class="img-prod"><img class="img-fluid"
							src="images/product-6.jpg" alt="Colorlib Template">
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="#">Brocolli</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span>$120.00</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="#"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="#"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="#" class="img-prod"><img class="img-fluid"
							src="images/product-7.jpg" alt="Colorlib Template">
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="#">Carrots</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span>$120.00</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="#"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="#"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="#" class="img-prod"><img class="img-fluid"
							src="images/product-8.jpg" alt="Colorlib Template">
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="#">Fruit Juice</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span>$120.00</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="#"
										class="add-to-cart d-flex justify-content-center align-items-center text-center">
										<span><i class="ion-ios-menu"></i></span>
									</a> <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> <a href="#"
										class="heart d-flex justify-content-center align-items-center ">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-section testimony-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate text-center">
					<span class="subheading">Recipe Review</span>
					<h2 class="mb-4">Our satisfied customer says</h2>
					<p>Cook with delicious ingredients through the latest popular recipes on our web page.</p>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="col-md-12">
					<div class="carousel-testimony owl-carousel">
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-5"
									style="background-image: url(images/person_1.jpg)">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text text-center">
									<p class="mb-5 pl-4 line">레시피를 알고 난 후 맞이한 일요일, 저는 이젠 더 이상 그냥 짜파게티 요리사가 아닙니다.
									채끝 짜파게티로 제 일요일, 제 인생이 달라졌습니다.</p>
									<p class="name">정민석</p>
									<span class="position">파견근로 개발자</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-5"
									style="background-image: url(images/person_2.jpg)">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text text-center">
									<p class="mb-5 pl-4 line">맨날 맛없는 음식만 시킨다구 놀림받았는데, 이젠 맛있는 음식을 만들어서 가면
									어디서 시켰냐고 주변에서 물어봐요. 호호호, 제가 만든건데 말이죠</p>
									<p class="name">하대진</p>
									<span class="position">해외이주 개발자</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-5"
									style="background-image: url(images/person_3.jpg)">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text text-center">
									<p class="mb-5 pl-4 line">여기서 배운 레시피로 동생한테 요리를 만들어줬는데, 집에서 나가려고 하질 않네요
									맛있는건 알아가지구 정말.. 요리도 조심해서 해야겠어요 호호호</p>
									<p class="name">김누리</p>
									<span class="position">현직 개발자</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-5"
									style="background-image: url(images/person_1.jpg)">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text text-center">
									<p class="mb-5 pl-4 line">식사가 맛이 없어 맛있는 반찬 하나만 먹고, 나머지는 버려왔는데
									이젠 맛있는 반찬을 먹을 배가 부족한게 아쉽습니다. 맛있는 레시피들이 너무 많아요!</p>
									<p class="name">임은범</p>
									<span class="position">발표자</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-5"
									style="background-image: url(images/person_1.jpg)">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text text-center">
									<p class="mb-5 pl-4 line">셀프 요리코너가 있는 식당에 못 가게 되었어요.
									언젠가 레시피로 도시락을 싸왔더니 민망하게 칭찬들을 ~~ 식당에 셀프 요리코너가 있으면 다들 절보며 기대해요.</p>
									<p class="name">임보미</p>
									<span class="position">회식 수호자</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<hr>

	<%@ include file="footer.jsp"%>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>