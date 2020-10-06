<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">	
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
	
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="styleSheet" href="css/normalize.css?ver=1.20.12">
    <link rel="styleSheet" href="css/common.css?ver=1.20.12">
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

.btn_search {gnb .gnb_search .btn_search { position:absolute;
	right: 10px;
	top: 3px;
	width: 30px;
	height: 30px;
}

#item5 {
	
}
</style>
  </head>
  <body class="goto-here">
    <%ArrayList<ProductDTO> itemlist = (ArrayList<ProductDTO>)session.getAttribute("list");	 %>
    <%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
		<div class="py-1 bg-primary">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
	    		<div class="col-lg-12 d-block">
		    		<div class="row d-flex">
		    			<div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <span class="text">+ 1235 2355 98</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
						    <span class="text">youremail@email.com</span>
					    </div>
					    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
						    <span class="text">3-5 Business days delivery &amp; Free Returns</span>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Vegefoods</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="col-md pr-4 d-flex topper align-items-center ">
								<!-- <div class="col-md-5 pr-4 d-flex topper align-items-center"></div> -->
<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="main1.jsp"
						class="nav-link">Home</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="shop.html" id="dropdown04"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">전체상품</a>
						<div class="dropdown-menu" aria-labelledby="dropdown04">
							<a class="dropdown-item" href="./itemView_controller">전체 상품</a> <a
								class="dropdown-item" href="wishlist.html">전체상품</a> <a
								class="dropdown-item" href="product-single.html">과일</a> <a
								class="dropdown-item" href="cart.html">채소</a> <a
								class="dropdown-item" href="checkout.html">정육</a>
						</div></li>
					<li class="nav-item"><a href="about.html" class="nav-link">신상품</a></li>
					<li class="nav-item"><a href="blog.html" class="nav-link">베스트</a></li>
					<li class="nav-item"><a href="contact.html" class="nav-link">알뜰쇼핑</a></li>

					<li class="nav-item cta cta-colored"><a href="cart.jsp"
						class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>
					<ul class="dan2">
						<li>
							<div class="col-md pr-4 d-flex topper align-items-center ">
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
							<li><div>
									<form action="searchWord_controller">
										<input name="sword" type="text" id="" value=""
											required="required" label="검색어" class="inp_search">
										<input type="image"
											src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png"
											class="btn_search">
									</form>
								</div></li>
						</ul>
					</ul>
	    </div>
	  </nav>
	<div class="page_aticle aticle_type2">
<div id="snb" class="snb_my">
<h2 class="tit_snb">Myinfo</h2>
<div class="inner_snb">
<ul class="list_menu">
<li>
<a href="member-info.jsp">주문내역</a>
</li>
<li class="on">
<a href="member-edit.jsp">개인 정보 수정</a>
</li>
</ul>
</div>
</div>
<div class="page_section section_myinfo">
<div class="head_aticle">
<h2 class="tit">개인 정보 수정</h2>
</div>
<script src="/shop/data/skin/designgj/godo.password_strength.js" type="text/javascript"></script>
<script src="/common_js/join_v1.js?ver=1.20.12"></script>
<div class="type_form member_join member_mod">
<form id="form" name="frmMember" method="post" action="/shop/member/indb.php" onsubmit="return chkForm2(this)" novalidate="">
<input type="hidden" name="mode" value="modMember">
<input type="hidden" name="check_mobile" value="1">
<input type="hidden" name="auth_finish_code" value="">
<input type="hidden" name="rncheck" value="">
<input type="hidden" name="dupeinfo" value="">
<input type="hidden" name="pakey" value="">
<input type="hidden" name="foreigner" value="1">
<input type="hidden" name="passwordSkin" value="Y">
<input type="hidden" name="m_id" value="dmsqja3233">
<table class="tbl_comm">
<tbody><tr class="fst">
<th>아이디<span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td>
<input type="text" value="dmsqja3233" readonly="" class="inp_read">
</td>
</tr>
<tr>
<th>현재 비밀번호</th>
<td>
<input type="password" name="originalPassword" id="originalPassword" onblur="checkCurrentPassword(this);return;">
<input type="hidden" name="originalPasswordCheck" value="1">
<p class="txt_guide square">
<span class="txt txt_case4 bad">현재 비밀번호를 확인해주세요</span>
</p>
</td>
</tr>
<tr class="member_pwd">
<th>새 비밀번호</th>
<td>
<input type="password" name="newPassword" id="newPassword" label="새 비밀번호" option="regPass" maxlength="16" class="reg_pw">
<input type="hidden" name="newPasswordCheck" value="0">
<p class="txt_guide square">
<span class="txt txt_case4">현재 비밀번호와 다르게 입력</span>
<span class="txt txt_case1">10자 이상 입력</span>
<span class="txt txt_case2">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span>
<span class="txt txt_case3">동일한 숫자 3개 이상 연속 사용 불가</span>
</p>
</td>
</tr>
<tr class="member_pwd">
<th>새 비밀번호 확인</th>
<td>
<input type="password" name="confirmPassword" id="confirmPassword" label="새 비밀번호" option="regPass" maxlength="16" class="confirm_pw">
<p class="txt_guide square">
<span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
</p>
</td>
</tr>
<tr>
<th>이름<span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td>
<input type="text" name="name" value="임은범" required="" fld_esssential="" label="이름" placeholder="이름을 입력해주세요">
</td>
</tr>
<tr>
<th>이메일<span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td>
<input type="text" name="email" value="dmsqja3233@gmail.com" data-email="dmsqja3233@gmail.com" size="30" required="" option="regEmail" label="이메일" placeholder="예: marketkurly@kurly.com" onblur="chkEmailChange($(this))">
<input type="hidden" name="chk_email" required="" label="이메일중복체크" value="1">
<a href="javascript:void(0)" onclick="chkEmail()" class="btn default">중복확인</a>
</td>
</tr>
<tr class="field_phone">
<th>휴대폰<span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td>
<div class="phone_num">
<input type="text" value="01045433990" pattern="[0-9]*" name="mobileInp" placeholder="숫자만 입력해주세요" class="inp" readonly="readonly">
<input type="hidden" name="mobile[]" id="mobile0" value="010" required="" option="regNum" label="휴대폰">
<input type="hidden" name="mobile[]" id="mobile1" value="4543" required="" option="regNum" label="휴대폰">
<input type="hidden" name="mobile[]" id="mobile2" value="3990" required="" option="regNum" label="휴대폰">
<button id="btn_cert" class="btn default" type="button">다른번호 인증</button>
</div>
<div id="codeNum" class="code_num">
<input type="text" name="auth_code" id="auth_code" value="" size="6" maxlength="6" pattern="[0-9]*" label="인증번호 확인" disabled="" class="inp_confirm" oninput="if(value.length>6)value=value.slice(0,6);$(this).val($(this).val().replace(/[^0-9]/g,''));">
<button id="btn_cert_confirm" class="btn default disabled" type="button">인증번호 확인</button>
<p id="countdown" class="count_down"></p>
</div>
<p class="txt_guide">
<span class="txt txt_case1"></span>
</p>
</td>
</tr>
<tr class="select_sex">
<th>성별</th>
<td>
<label class="">
<input type="radio" name="sex" value="m">
<span class="ico"></span>남자
</label>
<label class="">
<input type="radio" name="sex" value="w">
<span class="ico"></span>여자
</label>
<label class="checked">
<input type="radio" name="sex" value="n" checked="checked">
<span class="ico"></span>선택안함
</label>
</td>
</tr>
<tr class="birth field_birth">
<th>생년월일</th>
<td>
<div class="birth_day">
<input type="text" name="birth_year" id="birth_year" pattern="[0-9]*" value="" label="생년월일" size="4" maxlength="4" placeholder="YYYY">
<span class="bar"></span>
<input type="text" name="birth[]" id="birth_month" pattern="[0-9]*" value="" label="생년월일" size="2" maxlength="2" placeholder="MM">
<span class="bar"></span>
<input type="text" name="birth[]" id="birth_day" pattern="[0-9]*" value="" label="생년월일" size="2" maxlength="2" placeholder="DD">
</div>
<p class="txt_guide">
<span class="txt bad"></span>
</p>
</td>
</tr>
<tr>
<th>선택약관 동의 </th>
<td class="reg_agree">
<div class="check_view">
<input type="hidden" id="consentHidden" name="consent[1]" value="">
<label class="label_block check_agree ">
<input type="checkbox" name="hiddenCheck">
<span class="ico"></span>개인정보처리방침 동의 <span class="sub">(선택)</span>
</label>
<a href="#none" class="link btn_link btn_choice">약관보기 </a>
</div>

<div class="layer layer_choice">
<div class="inner_layer">
<div class="in_layer">
<h4 class="tit_layer">개인정보 수집·이용 동의 <span class="sub">(선택)</span></h4>
<div class="box_tbl">
<table cellpadding="0" cellspacing="0" width="100%">
<caption class="screen_out">개인정보의 수집 및 이용목적</caption>
<thead>
<tr>
<th scope="row" class="tit1">수집 목적</th>
<th scope="row" class="tit2">수집 항목</th>
<th scope="row" class="tit3">보유 기간</th>
</tr>
</thead>
<tbody>
<tr>
<td>맞춤형 회원 서비스 제공</td>
<td>성별, 생년월일</td>
<td>회원 탈퇴 즉시 파기</td>
</tr>
</tbody>
</table>
</div>
<p class="txt_service">동의를 거부하시는 경우에도 서비스는 이용하실 수 있습니다.</p>
</div>
<button type="button" class="btn_ok"><span class="txt_type">확인</span></button>
<button type="button" class="btn_close"><span class="screen_out">레이어 닫기</span></button>
</div> </div>

</td>
</tr>
<tr style="display:none">
<td cospan="2">
<input id="nosendf" name="messge_time" fw-filter="isFill" fw-label="배송 시 받기" fw-msg="" value="0" type="hidden">
<input id="sendf" name="messge_time" fw-filter="isFill" fw-label="오전 7시에 받기" fw-msg="" checked="" value="1" type="hidden">
<input id="passwords" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="비밀번호" type="hidden">
<input id="calls" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="경비실호출" type="hidden">
<input id="send" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="경비실로배송" type="hidden">
<input id="callm" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="세대호출" type="hidden">
<input id="phonem" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="연락처로전화" type="hidden">
<input id="free" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="자유출입가능" type="hidden">
<input id="anys" name="means_type" fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg="" value="기타사항" type="hidden">
<input id="means_inp" name="means" fw-filter="" fw-label="비밀번호 및 호출방법" fw-msg="" class="inputTypeText" maxlength="50" value=" " type="hidden" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="true">
<input id="no_means_inp" type="hidden">
<input id="pass" name="pass_type" fw-filter="isFill" fw-label="동의" fw-msg="" value="y" type="hidden">
<input id="nopass" name="pass_type" fw-filter="isFill" checked="" fw-label="동의안함" fw-msg="" value="n" type="hidden">
</td>
</tr>
<tr class="reg_agree">
<th>이용약관동의 <span class="ico">*<span class="screen_out">필수항목</span></span></th>
<td>
<div class="bg_dim"></div>
<div class="check_view">
<label class="label_block check_agree ">
<input type="checkbox" name="marketing">
<span class="ico"></span>무료배송, 할인쿠폰 등 혜택/정보 수신 동의 <span class="sub">(선택)</span>
</label>
<div class="check_event email_sms">
<label class="label_block check_agree ">
<input type="checkbox" name="sms" value="n">
<span class="ico"></span>SMS
</label>
<label class="label_block check_agree ">
<input type="checkbox" name="mailling" value="n">
<span class="ico"></span>이메일
</label>
</div>
</div>
</td>
</tr>
</tbody></table>
<div id="formSubmit" class="form_footer">
<a href="/shop/member/hack.php?&amp;" class="btn default">탈퇴하기</a>
<button type="submit" class="btn active">회원정보수정</button>
</div>
</form>
</div>
</div>
</div>

		<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light" style = "clear:both">
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
    <footer class="ftco-footer ftco-section">
      <div class="container">
      	<div class="row">
      		<div class="mouse">
						<a href="#" class="mouse-icon">
							<div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
						</a>
					</div>
      	</div>
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Vegefoods</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Menu</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Shop</a></li>
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Journal</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Help</h2>
              <div class="d-flex">
	              <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
	                <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
	                <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
	                <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
	                <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
	              </ul>
	              <ul class="list-unstyled">
	                <li><a href="#" class="py-2 d-block">FAQs</a></li>
	                <li><a href="#" class="py-2 d-block">Contact</a></li>
	              </ul>
	            </div>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
						  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
          </div>
        </div>
      </div>
    </footer>
    
  

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