<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="utf-8">
  
 <%@ include file="header.jsp" %>
 
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
    <body>
    
    <%
    	
    	MemberDTO info = (MemberDTO) session.getAttribute("info");
    
    	String phonenum = info.getPhone();
    %>
  		
  		<%ArrayList<CartDTO> list = (ArrayList<CartDTO>)session.getAttribute("clist");%>
  	
  		<%
	    	float num = 0;
	        float num2 = 0;
	    	int num3 = 0;
	    	float total = 0;
	    	
	        for (CartDTO e: list){
	    		num += e.getPrice() * e.getQuantity();
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
    
    
    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-xl-7 ftco-animate">
						<form action="#" class="billing-form">
							<h3 class="mb-4 billing-heading">배송 상세 정보</h3>
	          	<div class="row align-items-end">
	          		<div class="col-md-6">
	                <div class="form-group">
	                	<label for="성">성</label>
	                  <input value = <%= info.getName().charAt(0) %> type="text" class="form-control" placeholder="" readonly = "readonly">
	                </div>
	              </div>
	              <div class="col-md-6">
	                <div class="form-group">
	                	<label for="이름">이름</label>
	                  <input value = <%= Character.toString(info.getName().charAt(1)) +Character.toString(info.getName().charAt(2)) %> type="text" class="form-control" placeholder="" readonly = "readonly">
	                </div>
                </div>
                <div class="w-100"></div>
		    
		            
		            <div class="w-100"></div>
		            <div class="col-md-6">
		            	<div class="form-group">
	                	<label for="streetaddress">배송지 *</label>
	                  <input type="text" class="form-control" placeholder="">
	                </div>
		            </div>
		            <div class="col-md-6">
		            	<div class="form-group">
		            	<label for="streetaddress">상세주소 *</label>
	                  <input type="text" class="form-control" placeholder="">
	                </div>
		            </div>
		            <div class="w-100"></div>
		            <div class="col-md-6">
		            	<div class="form-group">
	                	<label for="towncity">우편번호 *</label>
	                  <input type="text" class="form-control" placeholder="">
	                </div>
		            </div>
		            <div class="col-md-6">
		            	<div class="form-group">
		            		<label for="postcodezip">연락처 *</label>
	                  <input type="text" class="form-control" placeholder=<%= phonenum %>>
	                </div>
		            </div>
		            <div class="w-100"></div>
		            <div class="col-md-6">
	                <div class="form-group">
	                	<label for="phone">이메일 아이디</label>
	                  <input type="text" class="form-control" placeholder="">
	                </div>
	              </div>
	              <div class="col-md-6">
	                <div class="form-group">
	                	<label for="emailaddress">이메일 주소</label>
	                  <select name="" id="" class="form-control">
		                  	<option value="">naver.com</option>
		                    <option value="">daum.net</option>
		                    <option value="">korea.com</option>
		                  </select>
	                </div>
                </div>
                <div class="w-100"></div>
                
	            </div>
	            
	            
	            
	            
	          </form><!-- END -->
					</div>
					<div class="col-xl-5">
	          <div class="row mt-5 pt-3">
	          	<div class="col-md-12 d-flex mb-5">
	          		<div class="cart-detail cart-total p-3 p-md-4">
	          			<h3 class="billing-heading mb-4">배송 총액</h3>
	          			
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
							<%=(int)total +"원"%>
							</span>
    					</p>
								</div>
	          	</div>
	          	<div class="col-md-12">
	          		<div class="cart-detail p-3 p-md-4">
	          			<h3 class="billing-heading mb-4">결제 수단</h3>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <label><input type="radio" name="optradio" class="mr-2"> 무통장 입금</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <label><input type="radio" name="optradio" class="mr-2"> 카드 </label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <label><input type="radio" name="optradio" class="mr-2"> 핸드폰</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="checkbox">
											   <label><input type="checkbox" value="" class="mr-2"> 상기 내용을 확인하였으며 결제에 동의합니다.</label>
											</div>
										</div>
									</div>
									<p><a href="#"class="btn btn-primary py-3 px-4">결제</a></p>
								</div>
	          	</div>
	          </div>
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->
    
    
    </body>
    
    <footer class="ftco-footer ftco-section"></footer>
    
  

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
    
  </body>

</html>