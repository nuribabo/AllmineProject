
<%@page import="com.model.ProductDAO"%>
<%@page import="java.net.URLDecoder"%>
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

.img-fluid {
  width: 253.01px;
  
  min-height: 325.68px;
}

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
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductDTO> recom_lst = new ArrayList<ProductDTO>();
		
		if (request.getQueryString() != null){
			String pyinfo = request.getQueryString().split("=")[1];
		
			pyinfo = URLDecoder.decode(pyinfo, "UTF-8");
				
			String[] pyinfo_lst = pyinfo.split(" ");
			
			for (int i=0; i< pyinfo_lst.length; i++){
				recom_lst.add(dao.select_by_name2(pyinfo_lst[i]));
			}
				
		}
		else{
			recom_lst.add(dao.select_by_name2("양파"));
			recom_lst.add(dao.select_by_name2("소금"));
			recom_lst.add(dao.select_by_name2("물"));
			recom_lst.add(dao.select_by_name2("고추장"));
			recom_lst.add(dao.select_by_name2("참기름"));
			recom_lst.add(dao.select_by_name2("간장"));
			recom_lst.add(dao.select_by_name2("후추"));
			recom_lst.add(dao.select_by_name2("달걀"));
		}
				
	%>

	<%@ include file="header.jsp"%>
	
	<!--//특가상품  -->
		<section class="ftco-section img"
			style="background-image: url(images/bg_3.jpg);">
			<div class="container">
				<div class="row justify-content-end">
					<div
						class="col-md-6 heading-section ftco-animate deal-of-the-day ftco-animate">
						<span class="subheading">Best Price For You</span>
						<h2 class="mb-4">당일 특가</h2>
						<p>생채, 죽, 국, 무침, 전, 샐러드나 스프, 스플레, 무스 등으로 만들거나 다른 요리의 재료로도 다양하게 활용 해보세요!</p>
						<h3>
							<a href="#">시금치</a>
						</h3>
						<span class="price">2,500원 <a href="#">1,200원</a></span>
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
							<span>최대 30%의 할인율</span>
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
							<span>차별화 된 제품 포장</span>
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
							<span>최상의 제품 퀄리티</span>
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
							<span>연중무휴</span>
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
									<h2>Special Thanks GivingDay</h2>
									<p>한가위, 사랑하는 가족들과 올마인하세요!</p>
									<p>

									<a href="#" class="btn btn-primary">둘러보기</a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div
								class="category-wrap ftco-animate img mb-4 d-flex align-items-end"
								style="background-image: url(images/category-1.jpg);">
								<div class="text px-3 py-1">

									<h2 align=center class="mb-0">
										<a href="#">두 손 가볍게! 추석 무료배송 상품</a>
									</h2>
								</div>
							</div>
							<div
								class="category-wrap ftco-animate img d-flex align-items-end"
								style="background-image: url(images/category-2.jpg);">
								<div class="text px-3 py-1">
									<h2 class="mb-0">

										<a href="#">딸기도 홍동백서? 과일특가상품</a>

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

								<a href="#">식혜와 수정과는 그만~ 과일쥬스 레시피</a>

							</h2>
						</div>
					</div>
					<div class="category-wrap ftco-animate img d-flex align-items-end"
						style="background-image: url(images/category-4.jpg);">
						<div class="text px-3 py-1">
							<h2 class="mb-0">

								<a href="#">추석엔 부럼 깨면 안돼? 견과특가상품</a>

							</h2>
						</div>
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

					<h2 class="mb-4">당신만을 위한 상품</h2>
					<p>올마인이 엄선해서 골라서 추천하는 상품들입니다.</p>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<%
					if (recom_lst != null) {
				%>
				<%
					for (int i = 0; i < recom_lst.size(); i++) {
				%>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href="product-single.jsp" class="img-prod"><img
							class="img-fluid" src=<%=recom_lst.get(i).getIMG_ADDR()%>
							alt="Colorlib Template"> <span class="status"><%=recom_lst.get(i).getDiscount_rate()%>%</span>
							<div class="overlay"></div> </a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a href="product-single.jsp"><%=recom_lst.get(i).getProduct_name()%></a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span class="mr-2 price-dc"><%=recom_lst.get(i).getPrice() + "원"%></span>
										<span class="price-sale"><%=((int)recom_lst.get(i).getPrice()*(100-recom_lst.get(i).getDiscount_rate())/100)/100 * 100+"원"%></span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									 <a href="#"
										class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a>
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
				
				
	</section>


	<section class="ftco-section testimony-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate text-center">
					<span class="subheading">Recipe Review</span>

					<h2 class="mb-4">레시피 인기 리뷰</h2>
					<p>최근 일주일간, 올마인이 선정한 가장 인기있는 리뷰입니다.</p>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="col-md-12">
					<div class="carousel-testimony owl-carousel">
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-5"
									style="background-image: url(jms.jpg)">
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
									style="background-image: url(hdj.jpg)">
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
									style="background-image: url(knl.jpg)">
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
									style="background-image: url(lmb.jpg)">
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
									style="background-image: url(lbm.jpg)">
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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>