<%@page import="com.model.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">


  <head>
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
  
  <%
    	String name = request.getParameter("prod_name");
	 %>
 
	<%
    	MemberDTO info = (MemberDTO) session.getAttribute("info");
		ProductDAO dao = new ProductDAO();
		
		ArrayList<ProductDTO> item_lst = dao.select_by_name(name);
		ProductDTO item = item_lst.get(0);
		
		
	%>
	
	<%@ include file="header.jsp"%>
  
  
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span class="mr-2"><a href="index.html">Product</a></span> <span>Product Single</span></p>
            <h1 class="mb-0 bread">Product Single</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row">
    			<div class="col-lg-6 mb-5 ftco-animate">
    			
    			<%-- src=<%=itemlist.get(i).getIMG_ADDR()
    					<a href="product-single.jsp?prod_name=<%=itemlist.get(i).getProduct_name() %>" class="img-prod"><img
                        class="img-fluid" src=<%=list.get(i).getIMG_ADDR()%>
                        alt="Colorlib Template"> --%>
                        
    				<a href="images/product-1.jpg" class="image-popup"><img
                        class="img-fluid" src=<%=item.getIMG_ADDR()%> alt="Colorlib Template"></a>
    			</div>
    			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
    				<h3><%=item.getProduct_name() %></h3>
    				<div class="rating d-flex">
							<p class="text-left mr-4">
								<a href="#" class="mr-2">5.0</a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
							</p>
							<p class="text-left mr-4">
								<a href="#" class="mr-2" style="color: #000;">할인율 <span style="color: #bbb;"><%= item.getDiscount_rate() +"%" %></span></a>
							</p>
							<p class="text-left">
								<a href="#" class="mr-2" style="color: #000;">판매량 <span style="color: #bbb;">483</span></a>
							</p>
						</div>
    				<p class="price"><span><%= (item.getPrice() * (100-item.getDiscount_rate())/100)/100 * 100 + "원"%></span></p>
    				<p>궁시렁궁시렁 재료설명
						</p>
						<div class="row mt-4">
							<div class="col-md-6">
								<div class="form-group d-flex">
		              <div class="select-wrap">
	                  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                  
	                </div>
		            </div>
							</div>
							<div class="w-100"></div>
							<div class="input-group col-md-6 d-flex mb-3">
	             	<span class="input-group-btn mr-2">
	                	<button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
	                   <i class="ion-ios-remove"></i>
	                	</button>
	            		</span>
	             	<input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
	             	<span class="input-group-btn ml-2">
	                	<button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
	                     <i class="ion-ios-add"></i>
	                 </button>
	             	</span>
	          	</div>
	          	<div class="w-100"></div>
	          	<div class="col-md-12">
	          		<p style="color: #000;">재고 : 600kg</p>
	          	</div>
          	</div>
          	<%-------------------------- 여기서부터 장바구니에 넣는거 하심대요 -------------------------%>
          	<p><a href="cartcontroller.java?itemname=<%=name%>" class="btn btn-black py-3 px-5">장바구니 담기</a></p>
    			</div>
    		</div>
    	</div>
    </section>





    <section class="ftco-section">
    	<div class="container">
				<div class="row justify-content-center mb-3 pb-3">
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<span class="subheading">Products</span>
            <h2 class="mb-4">연관 상품</h2>
          </div>
        </div>   		
    	</div>
    	<div class="container">
    		<div class="row">
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT4q917EvLPgEHraLbi_s-8Bqw3XxUNLD22yVedgEAMBRNMiYRW4cu4hWcavFlp6HJEYCWA36jzXo54UAnojYw7FVyOczctjehVgwHNjLVH&usqp=CAc" alt="Colorlib Template" width = 100%>
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">소고기우둔살</a></h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price"><span>14700원</span></p>
		    					</div>
	    					</div>
    						<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
	    							
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
    			


    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcS8V2og5kPOGNJ71jaifuh1Di6o4gxPVySD2UX4jv38-38bc3HzKSwe77LWSOLoGo-vy_4ViPT_S7Y&usqp=CAc" alt="Colorlib Template" width=100%>
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">달걀</a></h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price"><span>7500원</span></p>
		    					</div>
	    					</div>
    						<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
	    							
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>

<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="data:image/webp;base64,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" alt="Colorlib Template" width = 100%>
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">고추장</a></h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price"><span>25000원</span></p>
		    					</div>
	    					</div>
    						<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
	    							
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
    			
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="#" class="img-prod"><img class="img-fluid" src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTv2z-MmvD-J_dAn-rnEzIJ89JJs9OjGsKSKoT7DVPJI4SBF0m9qqtlcqscO9s6aLvHY6hcKJD0rHMjPxuHnJyIZAFs5Wu5yurjEnEWgvnCfZodilwVlX00&usqp=CAE" alt="Colorlib Template" width = 100%>
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">참기름</a></h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price"><span>8000원</span></p>
		    					</div>
	    					</div>
    						<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
	    							
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>


    </section>

   <section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
      <div class="container py-4">
         <div class="row d-flex justify-content-center py-5">
            <div class="col-md-6">
               <h2 style="font-size: 22px;" class="mb-0">새로운 상품에 대한 정기구독을 원한다면</h2>
               <span>이메일 주소를 입력하고 신규 세일상품과 레시피를 확인해보세요.</span>
            </div>
            <div class="col-md-6 d-flex align-items-center">
               <form action="#" class="subscribe-form">
                  <div class="form-group d-flex">
                     <input type="text" class="form-control"
                        placeholder="이메일 주소를 입력하세요"> <input type="submit"
                        value="제출" class="submit px-3">
                  </div>
               </form>
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