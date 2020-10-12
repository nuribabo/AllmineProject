<%@page import="com.model.CartDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Vegefoods - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
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
  </head>
  <body class="goto-here">
  

  
		

  <%MemberDTO info = (MemberDTO) session.getAttribute("info"); %>
  
  
  <%@ include file="header.jsp"%>
  
		<%clist = (ArrayList<CartDTO>)session.getAttribute("clist"); %>
		<%String qcheck =request.getParameter("result"); %>
		<%
		if(qcheck != null){
			System.out.print(qcheck);
		if(qcheck.equals("uno")){%>
		<script type="text/javascript">
		alert("최대 수량입니다.")
		</script>
		<%} %>
		<%if(qcheck.equals("dno")){ %>
		<script type="text/javascript">
		alert("최소 수량입니다.")
		</script>
		<%}} %>
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Wishlist</span></p>
            <h1 class="mb-0 bread">My Wishlist</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>&nbsp;</th>
						        <th>제품 명</th>
						        <th>&nbsp;</th>
						        <th>원가</th>
						        <th>할인율</th>
						        <th>할인가</th>
						        <th>수량</th>
						        <th>총액</th>
						      </tr>
						    </thead>
						    <tbody>
						    <%if(clist != null){ %>
						    	<%for(int i = 0; i<clist.size(); i++){ %>
						      <tr class="text-center">
						        <td class="product-remove"><a href="cart_oneDelcontroller?item=<%=clist.get(i).getProduct_id()%>"><span class="ion-ios-close"></span></a></td>
						        
						        <td class="image-prod"><div class="img" style="background-image:url(<%=clist.get(i).getImg_addr()%>);"></div></td>
						        
						        <td class="product-name">
						        	<h3><%=clist.get(i).getProduct_name()%></h3>
						        	<p>상품 설명란</p>
						        </td>
						        
						        <td class="price"><%=clist.get(i).getPrice()+"원"%></td>
						        <td class="price"><%=clist.get(i).getDiscount_rate()+"%"%></td>
						        
						        <td class="price"><%=((int)clist.get(i).getPrice()*(100-clist.get(i).getDiscount_rate())/100)/100 * 100+"원"%></td>
						        
						        <td class="quantity">
						       <!-- 플러스버튼 --> <div class="sp-plus fff"> 
						       
						       <a class="plus" href="cartquantity_controller?to=<%="plus " + clist.get(i).getProduct_id()%>">+</a>
						       
						       </div>
						        	<div class="input-group mb-3">
						        	
					             	<input type="text" name="quantity" class="quantity form-control input-number" value="<%=clist.get(i).getQuantity()%>" min="1" max="100">
					             	</div>
       								<!-- 마이너스버튼 -->
       								<div class="sp-minus fff"> <a class="minus" href="cartquantity_controller?to=<%="minus " + clist.get(i).getProduct_id()%>">-</a></div>
					          		 	
					          	</div>
					          </td>
						        
						        <td class="total"><%=((int)clist.get(i).getPrice()*(100-clist.get(i).getDiscount_rate())/100)/100 * 100 * clist.get(i).getQuantity() +"원"%></td>
						      </tr><!-- END TR-->
						      
              
 								<%} %>
 								<%} %>
 								<a href="cartDel_controller" class="btn btn-primary py-3 px-4">전체삭제</a>
 								<a href="cart.jsp" class="btn btn-primary py-3 px-4">주문</a>
 									
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
			</div>
		</section>

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

  <script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>
    
  </body>
</html>