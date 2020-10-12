<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
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
	<%
		ArrayList<ProductDTO> itemlist = (ArrayList<ProductDTO>) session.getAttribute("list");
	%>
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<%@ include file="header.jsp"%>
	
	
	<div class="page_aticle aticle_type2">
		<div id="snb" class="snb_my">
			<h2 class="tit_snb">Myinfo</h2>
			<div class="inner_snb">
				<ul class="list_menu">
					<li><a href="member-info.jsp">�ֹ�����</a></li>
					<li class="on"><a href="member-edit.jsp">���� ���� ����</a></li>
				</ul>
			</div>
		</div>
		<div class="page_section section_myinfo">
			<div class="head_aticle">
				<h2 class="tit">���� ���� ����</h2>
			</div>
			<script src="/shop/data/skin/designgj/godo.password_strength.js"
				type="text/javascript"></script>
			<script src="/common_js/join_v1.js?ver=1.20.12"></script>
			<div class="type_form member_join member_mod">
				<form action="EditMemberCon" method="post">
					<input type="hidden" name="mode" value="modMember">
					<input type="hidden" name="check_mobile" value="1">
					<input type="hidden" name="auth_finish_code" value=""> 
					<input type="hidden" name="rncheck" value=""> 
					<input type="hidden" name="dupeinfo" value=""> 
					<input type="hidden" name="pakey" value=""> 
					<input type="hidden" name="foreigner" value="1"> 
					<input type="hidden" name="passwordSkin" value="Y"> 
					<input type="hidden" name="m_id" value="">
					<table class="tbl_comm">
						<tbody>
							<tr class="fst">
								<th>���̵�<span class="ico">*<span class="screen_out">�ʼ��׸�</span></span></th>
								<td><input type="text" value="<%=info.getMember_id() %>" name = "id" readonly="readonly"></td>
							</tr>
							<tr>
								<th>���� ��й�ȣ</th>
								<td><input type="password" name="originalPassword"
									id="originalPassword"
									onblur="checkCurrentPassword(this);return;" value="<%=info.getPw()%>" readonly="readonly"> <input
									type="hidden" name="originalPasswordCheck" value="1">
									<p class="txt_guide square">
										<span class="txt txt_case4 bad">���� ��й�ȣ�� Ȯ�����ּ���</span>
									</p></td>
							</tr>
							<tr class="member_pwd">
								<th>�� ��й�ȣ</th>
								<td><input type="password" name="newPassword"
									id="newPassword" label="�� ��й�ȣ" option="regPass" maxlength="16"
									class="reg_pw"> <input type="hidden"
									name="newPasswordCheck" value="0">
									<p class="txt_guide square">
										<span class="txt txt_case4">���� ��й�ȣ�� �ٸ��� �Է�</span> <span
											class="txt txt_case1">10�� �̻� �Է�</span> <span
											class="txt txt_case2">����/����/Ư������(���� ����)�� ����ϸ�, 2�� �̻�
											����</span> <span class="txt txt_case3">������ ���� 3�� �̻� ���� ��� �Ұ�</span>
									</p></td>
							</tr>
							<tr>
								<th>�̸�<span class="ico">*<span class="screen_out">�ʼ��׸�</span></span></th>
								<td><input type="text" name="name" value="<%=info.getName() %>" required=""
									fld_esssential="" label="�̸�" placeholder="�̸��� �Է����ּ���">
								</td>
							</tr>
							<tr>
								<th>�̸���<span class="ico">*<span class="screen_out">�ʼ��׸�</span></span></th>
								<td><input type="text" name="email"
									value="<%=info.getEmail() %>" data-email="<%=info.getEmail() %>"
									size="30" required="" option="regEmail" label="�̸���"
									placeholder="��: marketkurly@kurly.com"
									onblur="chkEmailChange($(this))"> <input type="hidden"
									name="chk_email" required="" label="�̸����ߺ�üũ" value="1">
									<a href="javascript:void(0)" onclick="chkEmail()"
									class="btn default">�ߺ�Ȯ��</a></td>
							</tr>
							<tr class="field_phone">
								<th>�޴���<span class="ico">*<span class="screen_out">�ʼ��׸�</span></span></th>
								<td>
									<div class="phone_num">
										<input type="text" value="<%=info.getPhone() %>" pattern="[0-9]*"
											name="phone" placeholder="���ڸ� �Է����ּ���" class="inp"
											> <input type="hidden"
											name="mobile[]" id="mobile0" value="010" required=""
											option="regNum" label="�޴���"> <input type="hidden"
											name="mobile[]" id="mobile1" value="4543" required=""
											option="regNum" label="�޴���"> <input type="hidden"
											name="mobile[]" id="mobile2" value="3990" required=""
											option="regNum" label="�޴���">
										<button id="btn_cert" class="btn default" type="button">�ٸ���ȣ
											����</button>
									</div>
									<div id="codeNum" class="code_num">
										<input type="text" name="auth_code" id="auth_code" value=""
											size="6" maxlength="6" pattern="[0-9]*" label="������ȣ Ȯ��"
											disabled="" class="inp_confirm"
											oninput="if(value.length>6)value=value.slice(0,6);$(this).val($(this).val().replace(/[^0-9]/g,''));">
										<button id="btn_cert_confirm" class="btn default disabled"
											type="button">������ȣ Ȯ��</button>
										<p id="countdown" class="count_down"></p>
									</div>
									<p class="txt_guide">
										<span class="txt txt_case1"></span>
									</p>
								</td>
							</tr>
							<tr class="member_addr">
								<th>�����ȣ</th>
								<td><input type="text" name="member_addr1"
									id="confirmPassword" label="�� ��й�ȣ" option="regPass"
									maxlength="16" class="confirm_pw" value = "<%=info.getMember_addr1()%>">
									<p class="txt_guide square">
										<span class="txt txt_case1">������ ��й�ȣ�� �Է����ּ���.</span>
									</p></td>
							</tr>
							<tr class="member_addr">
								<th>�ּ�</th>
								<td><input type="text" name="member_addr2"
									id="confirmPassword" label="�� ��й�ȣ" option="regPass"
									maxlength="16" class="confirm_pw" value = "<%=info.getMember_addr2() %>">
									<p class="txt_guide square">
										<span class="txt txt_case1">������ ��й�ȣ�� �Է����ּ���.</span>
									</p></td>
							</tr>
							<tr class="member_addr">
								<th>���ּ�</th>
								<td><input type="text" name="member_addr3"
									id="confirmPassword" label="�� ��й�ȣ" option="regPass"
									maxlength="16" class="confirm_pw" value = "<%=info.getMember_addr3() %>">
									<p class="txt_guide square">
										<span class="txt txt_case1">������ ��й�ȣ�� �Է����ּ���.</span>
									</p></td>
							</tr>
							<tr class="select_gender">
								<th>����</th>
								<td><label class=""> <input type="radio" name="gender"
										value="��"> <span class="ico"></span>����
								</label> <label class=""> <input type="radio" name="gender"
										value="��"> <span class="ico"></span>����
							</tr>
							<tr class="birth field_birth">
								<th>�������</th>
								<td>
									
										<input type="date" name="birth" id="inputbirth"
											value="" label="�������" size="4" maxlength="4"
											placeholder="YYYY">
									
									<p class="txt_guide">
										<span class="txt bad"></span>
									</p>
								</td>
							</tr>
							
							
						<!-- 	<div class="form-group">
					<label for="inputbirth">birth</label> <input type="date"
						class="form-control" id="inputbirth" >
				</div> -->
							<tr>
								<th>���þ�� ����</th>
								<td class="reg_agree">
									<div class="check_view">
										<input type="hidden" id="consentHidden" name="consent[1]"
											value=""> <label class="label_block check_agree ">
											<input type="checkbox" name="hiddenCheck"> <span
											class="ico"></span>��������ó����ħ ���� <span class="sub">(����)</span>
										</label> <a href="#none" class="link btn_link btn_choice">������� </a>
									</div>

									<div class="layer layer_choice">
										<div class="inner_layer">
											<div class="in_layer">
												<h4 class="tit_layer">
													�������� �������̿� ���� <span class="sub">(����)</span>
												</h4>
												<div class="box_tbl">
													<table cellpadding="0" cellspacing="0" width="100%">
														<caption class="screen_out">���������� ���� �� �̿����</caption>
														<thead>
															<tr>
																<th scope="row" class="tit1">���� ����</th>
																<th scope="row" class="tit2">���� �׸�</th>
																<th scope="row" class="tit3">���� �Ⱓ</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>������ ȸ�� ���� ����</td>
																<td>����, �������</td>
																<td>ȸ�� Ż�� ��� �ı�</td>
															</tr>
														</tbody>
													</table>
												</div>
												<p class="txt_service">���Ǹ� �ź��Ͻô� ��쿡�� ���񽺴� �̿��Ͻ� �� �ֽ��ϴ�.</p>
											</div>
											<button type="button" class="btn_ok">
												<span class="txt_type">Ȯ��</span>
											</button>
											<button type="button" class="btn_close">
												<span class="screen_out">���̾� �ݱ�</span>
											</button>
										</div>
									</div>

								</td>
							</tr>
							<tr style="display: none">
								<td cospan="2"><input id="nosendf" name="messge_time"
									fw-filter="isFill" fw-label="��� �� �ޱ�" fw-msg="" value="0"
									type="hidden"> <input id="sendf" name="messge_time"
									fw-filter="isFill" fw-label="���� 7�ÿ� �ޱ�" fw-msg="" checked=""
									value="1" type="hidden"> <input id="passwords"
									name="means_type" fw-filter="isFill" fw-label="�������� ���� Ư�̻���"
									fw-msg="" value="��й�ȣ" type="hidden"> <input id="calls"
									name="means_type" fw-filter="isFill" fw-label="�������� ���� Ư�̻���"
									fw-msg="" value="����ȣ��" type="hidden"> <input id="send"
									name="means_type" fw-filter="isFill" fw-label="�������� ���� Ư�̻���"
									fw-msg="" value="���Ƿι��" type="hidden"> <input
									id="callm" name="means_type" fw-filter="isFill"
									fw-label="�������� ���� Ư�̻���" fw-msg="" value="����ȣ��" type="hidden">
									<input id="phonem" name="means_type" fw-filter="isFill"
									fw-label="�������� ���� Ư�̻���" fw-msg="" value="����ó����ȭ" type="hidden">
									<input id="free" name="means_type" fw-filter="isFill"
									fw-label="�������� ���� Ư�̻���" fw-msg="" value="�������԰���" type="hidden">
									<input id="anys" name="means_type" fw-filter="isFill"
									fw-label="�������� ���� Ư�̻���" fw-msg="" value="��Ÿ����" type="hidden">
									<input id="means_inp" name="means" fw-filter=""
									fw-label="��й�ȣ �� ȣ����" fw-msg="" class="inputTypeText"
									maxlength="50" value=" " type="hidden" autocomplete="off"
									autocorrect="off" autocapitalize="off" spellcheck="true">
									<input id="no_means_inp" type="hidden"> <input
									id="pass" name="pass_type" fw-filter="isFill" fw-label="����"
									fw-msg="" value="y" type="hidden"> <input id="nopass"
									name="pass_type" fw-filter="isFill" checked="" fw-label="���Ǿ���"
									fw-msg="" value="n" type="hidden"></td>
							</tr>
							<tr class="reg_agree">
								<th>�̿������� <span class="ico">*<span
										class="screen_out">�ʼ��׸�</span></span></th>
								<td>
									<div class="bg_dim"></div>
									<div class="check_view">
										<label class="label_block check_agree "> <input
											type="checkbox" name="marketing"> <span class="ico"></span>������,
											�������� �� ����/���� ���� ���� <span class="sub">(����)</span>
										</label>
										<div class="check_event email_sms">
											<label class="label_block check_agree "> <input
												type="checkbox" name="sms" value="n"> <span
												class="ico"></span>SMS
											</label> <label class="label_block check_agree "> <input
												type="checkbox" name="mailling" value="n"> <span
												class="ico"></span>�̸���
											</label>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div id="formSubmit" class="form_footer">
						<a href="/shop/member/hack.php?&amp;" class="btn default">Ż���ϱ�</a>
						<button type="submit" class="btn active">ȸ����������</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light"
		style="clear: both">
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
	<footer class="ftco-footer ftco-section">
		<div class="container">
			<div class="row">
				<div class="mouse">
					<a href="#" class="mouse-icon">
						<div class="mouse-wheel">
							<span class="ion-ios-arrow-up"></span>
						</div>
					</a>
				</div>
			</div>
			
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