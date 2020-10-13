
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
			recom_lst.add(dao.select_by_name2("����"));
			recom_lst.add(dao.select_by_name2("�ұ�"));
			recom_lst.add(dao.select_by_name2("��"));
			recom_lst.add(dao.select_by_name2("������"));
			recom_lst.add(dao.select_by_name2("���⸧"));
			recom_lst.add(dao.select_by_name2("����"));
			recom_lst.add(dao.select_by_name2("����"));
			recom_lst.add(dao.select_by_name2("�ް�"));
		}
				
	%>

	<%@ include file="header.jsp"%>
	
	<!--//Ư����ǰ  -->
		<section class="ftco-section img"
			style="background-image: url(images/bg_3.jpg);">
			<div class="container">
				<div class="row justify-content-end">
					<div
						class="col-md-6 heading-section ftco-animate deal-of-the-day ftco-animate">
						<span class="subheading">Best Price For You</span>
						<h2 class="mb-4">���� Ư��</h2>
						<p>��ä, ��, ��, ��ħ, ��, �����峪 ����, ���÷�, ���� ������ ����ų� �ٸ� �丮�� ���ε� �پ��ϰ� Ȱ�� �غ�����!</p>
						<h3>
							<a href="#">�ñ�ġ</a>
						</h3>
						<span class="price">2,500�� <a href="#">1,200��</a></span>
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
							<span>�ִ� 30%�� ������</span>
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
							<span>����ȭ �� ��ǰ ����</span>
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
							<span>�ֻ��� ��ǰ ����Ƽ</span>
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
							<span>���߹���</span>
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
									<p>�Ѱ���, ����ϴ� ������� �ø����ϼ���!</p>
									<p>

									<a href="#" class="btn btn-primary">�ѷ�����</a>
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
										<a href="#">�� �� ������! �߼� ������ ��ǰ</a>
									</h2>
								</div>
							</div>
							<div
								class="category-wrap ftco-animate img d-flex align-items-end"
								style="background-image: url(images/category-2.jpg);">
								<div class="text px-3 py-1">
									<h2 class="mb-0">

										<a href="#">���⵵ ȫ���鼭? ����Ư����ǰ</a>

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

								<a href="#">������ �������� �׸�~ �����꽺 ������</a>

							</h2>
						</div>
					</div>
					<div class="category-wrap ftco-animate img d-flex align-items-end"
						style="background-image: url(images/category-4.jpg);">
						<div class="text px-3 py-1">
							<h2 class="mb-0">

								<a href="#">�߼��� �η� ���� �ȵ�? �߰�Ư����ǰ</a>

							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

		<!-- ��ǰ����Ʈ �����̳� ����-->
		<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<span class="subheading">How about it?</span>
					<!-- ����ٰ� ��õ�˰��� �������� �ѷ����� �� �� ���� -->

					<h2 class="mb-4">��Ÿ��� ���� ��ǰ</h2>
					<p>�ø����� �����ؼ� ��� ��õ�ϴ� ��ǰ���Դϴ�.</p>
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
										<span class="mr-2 price-dc"><%=recom_lst.get(i).getPrice() + "��"%></span>
										<span class="price-sale"><%=((int)recom_lst.get(i).getPrice()*(100-recom_lst.get(i).getDiscount_rate())/100)/100 * 100+"��"%></span>
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

					<h2 class="mb-4">������ �α� ����</h2>
					<p>�ֱ� �����ϰ�, �ø����� ������ ���� �α��ִ� �����Դϴ�.</p>
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
									<p class="mb-5 pl-4 line">�����Ǹ� �˰� �� �� ������ �Ͽ���, ���� ���� �� �̻� �׳� ¥�İ�Ƽ �丮�簡 �ƴմϴ�.
									ä�� ¥�İ�Ƽ�� �� �Ͽ���, �� �λ��� �޶������ϴ�.</p>
									<p class="name">���μ�</p>
									<span class="position">�İ߱ٷ� ������</span>
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
									<p class="mb-5 pl-4 line">�ǳ� ������ ���ĸ� ��Ų�ٱ� ��޾Ҵµ�, ���� ���ִ� ������ ���� ����
									��� ���׳İ� �ֺ����� �������. ȣȣȣ, ���� ����ǵ� ������</p>
									<p class="name">�ϴ���</p>
									<span class="position">�ؿ����� ������</span>
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
									<p class="mb-5 pl-4 line">���⼭ ��� �����Ƿ� �������� �丮�� �������µ�, ������ �������� ���� �ʳ׿�
									���ִ°� �˾ư����� ����.. �丮�� �����ؼ� �ؾ߰ھ�� ȣȣȣ</p>
									<p class="name">�贩��</p>
									<span class="position">���� ������</span>
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
									<p class="mb-5 pl-4 line">�Ļ簡 ���� ���� ���ִ� ���� �ϳ��� �԰�, �������� �����Դµ�
									���� ���ִ� ������ ���� �谡 �����Ѱ� �ƽ����ϴ�. ���ִ� �����ǵ��� �ʹ� ���ƿ�!</p>
									<p class="name">������</p>
									<span class="position">��ǥ��</span>
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
									<p class="mb-5 pl-4 line">���� �丮�ڳʰ� �ִ� �Ĵ翡 �� ���� �Ǿ����.
									������ �����Ƿ� ���ö��� �οԴ��� �θ��ϰ� Ī������ ~~ �Ĵ翡 ���� �丮�ڳʰ� ������ �ٵ� ������ ����ؿ�.</p>
									<p class="name">�Ӻ���</p>
									<span class="position">ȸ�� ��ȣ��</span>
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