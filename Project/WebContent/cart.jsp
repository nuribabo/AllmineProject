<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    
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
  <%@ include file="header.jsp" %>
  
  <body class="goto-here">
  		
  		<%MemberDTO info = (MemberDTO) session.getAttribute("info"); %>
  		
  		<%ArrayList<CartDTO> list = (ArrayList<CartDTO>)session.getAttribute("clist");%>
  	
  		<%
	    	float num = 0;
	        float num2 = 0;
	    	int num3 = 0;
	    	float total = 0;
	        for (CartDTO e: list){
	    		num += e.getPrice()* e.getQuantity();
	    		num2 += (e.getPrice() * (e.getDiscount_rate())/100)/100 * 100;
	    	}
	        
	        if (num-num2 < 50000){
	        	num3 = 3000;
	        }
	        else{
	        	num3 = 0;
	        }
	        
	        total = (int)(num - num2);
	        
	        if (num3 != 0){
	        	total += 3000;
	        }
	        
	    %>
	    
		
		
    

    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="main.jsp">Home</a></span> <span>Cart</span></p>
            <h1 class="mb-0 bread">My Cart</h1>
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
						        <th>가격</th>
						        <th>수량</th>
						        <th>총합</th>
						      </tr>
						    </thead>
						    <tbody>
						      
						      
						      <%
								for (int i = 0; i < list.size(); i++) {
									String img_addr = list.get(i).getImg_addr();
							  	%>
						        <tr class="text-center">
						        
						        
						        
						        
						        <!-- <td class="image-prod"><div class="img" style="background-image:url(images/product-3.jpg);"></div></td> -->
						   		<td class="image-prod"><div class="img" style="background-image: url(<%= img_addr %>);"></div></td>
						        <td class="product-name">
						        	<h3><%=list.get(i).getProduct_name()%></h3>
						        	<p>생식, 찜, 볶음, 절임, 삶기 등 다양한 조리법과 특유의 달큰한 맛이 있으며 다이어트 음식으로도 각광받고 있다.</p>
						        </td>
						        
						        <td class="price"><%=((int)list.get(i).getPrice()*(100-list.get(i).getDiscount_rate())/100)/100 * 100 + "원"%></td>
						        
						        <td class="quantity">
						        	<%=list.get(i).getQuantity() + "개"%>
					          </td>
					          <td class="total"><%=((int)list.get(i).getPrice()*(100-list.get(i).getDiscount_rate())/100)/100 * 100*list.get(i).getQuantity() + "원"%></td>
					          </tr><!-- END TR-->
								<%
									}
								%>

						        
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    		<div class="row justify-content-end">
    			<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>쿠폰 코드</h3>
    					<p>쿠폰을 입력해주세요</p>
  						<form action="#" class="info">
	              <div class="form-group">
	              	<label for="">쿠폰 코드</label>
	                <input type="text" class="form-control text-left px-3" placeholder="">
	              </div>
	            </form>
    				</div>
    				<p><a href="checkout.html" class="btn btn-primary py-3 px-4">쿠폰 적용</a></p>
    			</div>
    			
    			<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>장바구니 총합</h3>
    					<p class="d-flex">
    						<span>할인 전 가격</span>
    						<span>
    						
    						<%= (int)num+"원" %>
    						
    						</span>
    					</p>
    					<p class="d-flex">
    						<span>배송비</span>
    						<span>
    						<%= num3+"원" %>
    						
    						</span>
    					</p>
    					<p class="d-flex">
    						<span>할인가</span>
    						<span>

							<%= (int)num2+"원"%>
							</span>
    					</p>
    					<hr>
    					<p class="d-flex total-price">
    						<span>총합</span>
    						<span>
							<%= (int)total+"원"%>
							</span>
    					</p>
    				</div>
    				<p><a href="checkout.jsp" class="btn btn-primary py-3 px-4">결제창으로 이동</a></p>
    			</div>
    		</div>
			</div>
		</section>

		<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
      <div class="container py-4">
        <div class="row d-flex justify-content-center py-5">
          <div class="col-md-6">
          	<h2 style="font-size: 22px;" class="mb-0">Subcribe to our Newsletter</h2>
          	<span>Get e-mail updates about our latest shops and special offers</span>
          </div>
          <div class="col-md-6 d-flex align-items-center">
            <form action="#" class="subscribe-form">
              <div class="form-group d-flex">
                <input type="text" class="form-control" placeholder="Enter email address">
                <input type="submit" value="Subscribe" class="submit px-3">
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <%@ include file="footer.jsp" %>
    
  

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