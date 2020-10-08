<%@page import="com.model.ProductDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jqu
    ery.timepicker.css">


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

.user_sort.name_select {
   display: block;
   overflow: hidden;
   padding: 8px 13px 13px 0;
   font-size: 12px;
   background: black;
   text-align: right;
}

.user_sort.name_select {
	display: block;
	overflow: hidden;
	padding: 8px 13px 13px 0;
	font-size: 12px;
	background: black;
	text-align: right;
}

</style>
</head>
<body class="goto-here">
	<%
    	ArrayList<ProductDTO> itemlist = (ArrayList<ProductDTO>) session.getAttribute("list");
		
		int page_num = Integer.parseInt(request.getParameter("page_num"));
		
		String name = request.getParameter("name");
		System.out.println(name);
        

	 %>
 
	<%
    	MemberDTO info = (MemberDTO) session.getAttribute("info");
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductDTO> list = dao.select_by_All();
		if (name.equals("all")){
			itemlist = null;
		}
	%>
	
	<%@ include file="header.jsp"%>

</style>
  </head>
  <body class="goto-here">
   	
	
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
    
      <div class="container">
         <div
            class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="index.html">Home</a></span> <span>Products</span>
               </p>
               <h1 class="mb-0 bread">Products</h1>
            </div>
         </div>
      </div>
   </div>

   <section class="ftco-section">

      <div class="container">
         <div class="row justify-content-center">
            <div class="col-md-10 mb-5 text-center">
               <ul class="product-category">
               
               <%
               String[] arr = {"all","VF", "SF", "MP", "SC", "RS", "GD", "MI", "SS", "FO", "DR", "NA"};
               String[] arr2 = {"전체보기","과일·채소류","해·수산물류","정육·알·육가공품류","향신료·양념류","가공·간편식류",
                       "곡물·견과류", "유제품류", "면·가루·유지류", "반찬류", "음료·주류", "자연산물"};
               
               %>
               	<%-- <li><a href="./itemView_controller?name=<%="all"%>">전체보기</a></li>
                  <li><a href="./itemView_controller?name=<%="VF"%>">과일·채소류</a></li>
                  <li><a href="./itemView_controller?name=<%="SF"%>">해·수산물류</a></li>
                  <li><a href="./itemView_controller?name=<%="MP"%>">정육·알·육가공품류</a></li>
                  <li><a href="./itemView_controller?name=<%="SC"%>">향신료·양념류</a></li>
                  <li><a href="./itemView_controller?name=<%="RS"%>">가공·간편식류</a></li>
                  <li><a href="./itemView_controller?name=<%="GD"%>">곡물·견과류</a></li>
                  <li><a href="./itemView_controller?name=<%="MI"%>">유제품류</a></li>
                  <li><a href="./itemView_controller?name=<%="SS"%>">면·가루·유지류</a></li>
                  <li><a href="./itemView_controller?name=<%="FO"%>">반찬류</a></li>
                  <li><a href="./itemView_controller?name=<%="DR"%>">음료·주류</a></li>
                  <li><a href="./itemView_controller?name=<%="NA"%>">자연산물</a></li> --%>
               
               <% for (int i=0; i<arr.length; i++){ %>
                      <% if (arr[i].equals(name)) {%>
                      		<% System.out.println("11111111111111"); %>
             				<% System.out.println(arr[i]); %>
             				<% System.out.println(name); %>
                        	<li><a href="./itemView_controller?name=<%=arr[i]%>" style="background-color:greenyellow"><%= arr2[i]%></a></li>
                        	
                        <%}else { %>
<%--                         <% System.out.println("22222222222222"); %>
                        	<% System.out.println(arr[i]); %>
                        	<% System.out.println(name); %>
 --%>                        	<li><a href="./itemView_controller?name=<%=arr[i]%>"><%= arr2[i]%></a></li>
                        <%}%>
                <%}%>
                
                
               </ul>
            </div>
            <div class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" href="shop.html"
                  id="dropdown04" data-toggle="dropdown" aria-haspopup="true"
                  aria-expanded="false">전체상품</a>
               <div class="dropdown-menu" aria-labelledby="dropdown04">
                  <a class="dropdown-item" href="./itemView_controller" class="active">전체 상품</a> 
                  <a class="dropdown-item" href="./discount_controller?check=dh">높은할인율순</a>
                  <a class="dropdown-item" href="./discount_controller?check=dl">낮은할인율순</a>
                  <a class="dropdown-item" href="./discount_controller?check=pl">낮은가격순</a>
            
                  <a class="dropdown-item" href="./discount_controller?check=ph">높은가격순</a>
               </div>

            </div>
         </div>
         <div class="row">
            <%
            	
            	if (itemlist != null){
            %>
            
            <%
               for (int i = 10*(page_num-1); i < 10*(page_num) ; i++) {
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
                              <span class="mr-2 price-dc"><%=itemlist.get(i).getPrice()%></span><span
                                 class="price-sale"><%=itemlist.get(i).getPrice() - itemlist.get(i).getPrice() * itemlist.get(i).getDiscount_rate() / 100.0%></span>
                           </p>
                        </div>
                     </div>
                     <div class="bottom-area d-flex px-3">
                        <div class="m-auto d-flex">
                           
<!--                            <a href="#"
                              class="add-to-cart d-flex justify-content-center align-items-center text-center">
                              <span><i class="ion-ios-menu"></i></span>
                           </a> --> 
                           
                           <a
                              href="cartcontroller?name=<%=list.get(i).getProduct_id()%>"
                              class="buy-now d-flex justify-content-center align-items-center mx-1">
                              <span><i class="ion-ios-cart"></i></span>
                           </a> 
                           
<!--                            <a href="#"
                              class="heart d-flex justify-content-center align-items-center ">
                              <span><i class="ion-ios-heart"></i></span>
                           </a> -->
                           
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <%
               }
            %>
            <%
               }else
            %>
            
            <%
            {
            %>
            
            
			<%
               for (int i = 10*(page_num-1); i < 10*(page_num+1); i++) {
            %>
            <div class="col-md-6 col-lg-3 ftco-animate">
               <div class="product">
                  <a href="product-single.jsp" class="img-prod"><img
                     class="img-fluid" src=<%=list.get(i).getIMG_ADDR()%>
                     alt="Colorlib Template"> <span class="status"><%=list.get(i).getDiscount_rate()%>%</span>
                     <div class="overlay"></div> </a>
                  <div class="text py-3 pb-4 px-3 text-center">
                     <h3>
                        <a href="product-single.jsp"><%=list.get(i).getProduct_name()%></a>
                     </h3>
                     <div class="d-flex">
                        <div class="pricing">
                           <p class="price">
                              <span class="mr-2 price-dc"><%=list.get(i).getPrice()%></span><span
                                 class="price-sale"><%=list.get(i).getPrice() - list.get(i).getPrice() * list.get(i).getDiscount_rate() / 100.0%></span>
                           </p>
                        </div>
                     </div>
                     <div class="bottom-area d-flex px-3">
                        <div class="m-auto d-flex">
                           
                           <!-- <a href="#"
                              class="add-to-cart d-flex justify-content-center align-items-center text-center">
                              <span><i class="ion-ios-menu"></i></span>
                           </a> --> 
                           
                           <a
                              href="cartcontroller?name=<%=list.get(i).getProduct_id()%>"
                              class="buy-now d-flex justify-content-center align-items-center mx-1">
                              <span><i class="ion-ios-cart"></i></span>
                           </a> 
                           
<!--                            <a href="#"
                              class="heart d-flex justify-content-center align-items-center ">
                              <span><i class="ion-ios-heart"></i></span>
                           </a> -->
                           
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
            <div class="row mt-5">
               <div class="col text-center">
                  <div class="block-27">
                     <ul>
                        <li><a href="#">&lt;</a></li>
                        <% for (int i=1; i<=5; i++){ %>
                        	<% if (i != page_num) {%>
                        	<li><a href="shop1.jsp?page_num=<%= Integer.toString(i)%>&name=<%= name%>"><%= Integer.toString(i)%></a></li>
                        	
                        	<%}else { %>
                        	<li><a href="shop1.jsp?page_num=<%= Integer.toString(i)%>&name=<%= name%>" style="background-color:greenyellow"><%= Integer.toString(i)%></a></li>
                        	<%}%>
                        <%}%>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
   </section>

   <section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
      <div class="container py-4">
         <div class="row d-flex justify-content-center py-5">
            <div class="col-md-6">
               <h2 style="font-size: 22px;" class="mb-0">Subcribe to our
                  Newsletter</h2>
               <span>Get e-mail updates about our latest shops and special
                  offers</span>
            </div>
            <div class="col-md-6 d-flex align-items-center">
               <form action="#" class="subscribe-form">
                  <div class="form-group d-flex">
                     <input type="text" class="form-control"
                        placeholder="Enter email address"> <input type="submit"
                        value="Subscribe" class="submit px-3">
                  </div>
               </form>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>



</body>
</html>