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
	
	<!-- �Ұ��� -->
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
	
	<!-- �޴��� -->
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="main1.jsp">2��������Ʈ��</a>
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
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">��ü��ǰ</a>
						<div class="dropdown-menu" aria-labelledby="dropdown04">
							<a class="dropdown-item" href="./itemView_controller">��ü ��ǰ</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="VF"%>">���ϡ�ä�ҷ�</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="SF"%>">�ء����깰��</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="MP"%>">�������ˡ�������ǰ��</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="SC"%>">��ŷᡤ����</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="RS"%>">����������ķ�</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="GD"%>">����߰���</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="MI"%>">����ǰ��</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="SS"%>">�顤���硤������</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="FO"%>">������</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="DR"%>">���ᡤ�ַ�</a> <a
								class="dropdown-item"
								href="./itemView_controller?name=<%="NA"%>">�ڿ��깰</a>
						</div></li>
					<li class="nav-item"><a href="about.jsp" class="nav-link">������</a></li>
					<li class="nav-item"><a href="blog.jsp" class="nav-link">����Ʈ</a></li>
				

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
										<a href="admin.jsp">������������</a>
									</div>
									<div class="text item3">
										<a href="Logout">�α׾ƿ�</a>
									</div>
									<%
										}
									%>
									<div class="text item2" style="color: black;">
										<%=info2.getName()%>��</a>
									</div>
									<div class="text item2">
										<a href="mypage.jsp">����������</a>
									</div>
									<div class="text item3">
										<a href="Logout"> �α׾ƿ�</a>
									</div>
									<div class="text item4">
										<a href="member.html"> ������</a>
									</div>
								</div>
								<%
									} else {
								%>
								<div class="container2" text-align=center fot-size=15>
									<div class="text" id="item5">
										<a href="join.jsp">ȸ������</a>
									</div>
									<div class="text item6">
										<a href="login.jsp">�α���</a>
									</div>
									<div class="text item7">
										<a href="member.html">������</a>
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
											required="required" label="�˻���" class="inp_search"> <input
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