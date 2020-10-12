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
    	ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		
		ProductDAO dao = new ProductDAO();
		
		list = dao.select_by_All();
		
		int page_num = Integer.parseInt(request.getParameter("page_num"));
		
	 %>
 
	<%
    	MemberDTO info = (MemberDTO) session.getAttribute("info");
		
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
               
                
                
               </ul>
            </div>
            
            
			<div class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" href="shop.html"
                  id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-controls = "dropdown-menu"
                  aria-expanded="false">베스트상품</a>
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
               for (int i = 12*(page_num-1); i < 12*(page_num); i++) {
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
                              <span class="mr-2 price-dc"><%=list.get(i).getPrice()+ "원"%></span><span
                                 class="price-sale"><%=((int)list.get(i).getPrice()*(100-list.get(i).getDiscount_rate())/100)/100 * 100+"원"%></span>
                           
                           
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
                              href="cartcontroller?itemname=<%=list.get(i).getProduct_id()%>"
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

            <div class="row mt-5">
               <div class="col text-center">
                  <div class="block-27">
                     <ul>
                        <li><a href="#">&lt;</a></li>
                        <% for (int i=1; i<=5; i++){ %>
                        	<% if (i != page_num) {%>
                        	<li><a href="best.jsp?page_num=<%= Integer.toString(i)%>"><%= Integer.toString(i)%></a></li>
                        	
                        	<%}else { %>
                        	<li><a href="best.jsp?page_num=<%= Integer.toString(i)%>" style="background-color:greenyellow"><%= Integer.toString(i)%></a></li>
                        	<%}%>
                        <%}%>
                        <li><a href="#">></a></li>
                     </ul>
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