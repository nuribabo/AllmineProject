<%@page import="com.model.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
olorlib
</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,
    <title>Vegefoods - Free Bootstrap 4 Template by C initial-scale=1, shrink-to-fit=no">

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
.dan1 .serch1 .serch .btn_search {
    position: absolute;
    right: 10px;
    top: 3px;
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
	ArrayList<ProductDTO> itemlist = (ArrayList<ProductDTO>) session.getAttribute("list");
	%>

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
								class="dropdown-item" href="./fruitView_controller?name=<%="1"%>">����</a> <a
								class="dropdown-item" href="./fruitView_controller?name=<%="2"%>">ä��</a> <a
								class="dropdown-item" href="./fruitView_controller?name=<%="3"%>">����</a> <a
								class="dropdown-item" href="./fruitView_controller?name=<%="4"%>">���/����ǰ</a> <a
								class="dropdown-item" href="./fruitView_controller?name=<%="5"%>">����/�Ǿ</a>
						</div></li>
					<li class="nav-item"><a href="about.jsp" class="nav-link">������</a></li>
					<li class="nav-item"><a href="blog.jsp" class="nav-link">����Ʈ</a></li>
					<li class="nav-item"><a href="contact.jsp" class="nav-link">�˶����</a></li>

					<li class="nav-item cta cta-colored"><a href="cart.jsp"
						class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>
					<ul class="dan2">

	<li>
							<div class="col-md pr-4 d-flex topper align-items-center ">
								<!-- <div class="col-md-5 pr-4 d-flex topper align-items-center"></div> -->

								<%
									if (info != null) {
								%>
								<div class="container1" text-align=center fot-size=15>
									<%
										if (info.getMember_id().equals("admin")) {
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
										<%=info.getName()%>��</a>
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
											required="required" label="�˻���" class="inp_search">
										<input type="image"
											src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png"
											class="btn_search" position= absolute>
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

	<article class="container">
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3">
				<h3>ȸ������ Form</h3>
			</div>
		</div>
		<div class="col-sm-6 col-md-offset-3">
			<form action = "JoinService" method = "post">
				<div class="form-group">
					<label for="inputId">���̵�</label> <input type="text"
						class="form-control" id="inputId" name="id" placeholder="���̵� �Է��� �ּ���">
				</div>
				<div class="form-group">
					<label for="InputPw">��й�ȣ</label> <input type="password"
						class="form-control" id="InputPw" name="pw"placeholder="��й�ȣ�� �Է����ּ���">
				</div>
				<div class="form-group">
					<label for="inputPw2">��й�ȣ Ȯ��</label> <input type="password"
						class="form-control" id="inputPw2" name="pw2" placeholder="��й�ȣ Ȯ���� ���� �ٽ��ѹ� �Է����ּ���">
				</div>
				<div class="form-group">
					<label for="inputName">�̸�</label> <input type="text"
						class="form-control" id="inputName" name="name"
						placeholder="�̸��� �Է����ּ���">
				</div>
				<div class="form-group">
					<label for="inputEmail">email</label> <input type="email"
						class="form-control" id="inputEmail" name="email" placeholder="�̸����� �Է��� �ּ���">
				</div>
				<div class="form-group">
					<label for="inputPhone">�ڵ��� ��ȣ</label> <input type="phone"
						class="form-control" id="inputPhone" name="phone" placeholder="�ڵ��� ��ȣ�� �Է��� �ּ���">
				</div>
				<div class="form-group">
				<label for="inputAddress">�ּ�</label> <br>
					<input type="text" id="sample2_postcode" name="member_addr1" placeholder="�����ȣ">
					<input type="button" onclick="sample2_execDaumPostcode()"
						value="�����ȣ ã��"><br> <input type="text"
						id="sample2_address" name="member_addr2" placeholder="�ּ�"><br> <input
						type="text" id="sample2_detailAddress" name="member_addr3"placeholder="���ּ�">
					<input type="text" id="sample2_extraAddress" placeholder="�����׸�">

					<!-- iOS������ position:fixed ���װ� ����, �����ϴ� ����Ʈ�� �°� position:absolute ���� �̿��Ͽ� top,left�� ���� �ʿ� -->
					<div id="layer"
						style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
						<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
							id="btnCloseLayer"
							style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
							onclick="closeDaumPostcode()" alt="�ݱ� ��ư">
					</div>

					<script
						src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script>
						// �����ȣ ã�� ȭ���� ���� element
						var element_layer = document.getElementById('layer');

						function closeDaumPostcode() {
							// iframe�� ���� element�� �Ⱥ��̰� �Ѵ�.
							element_layer.style.display = 'none';
						}

						function sample2_execDaumPostcode() {
							new daum.Postcode(
									{
										oncomplete : function(data) {
											// �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

											// �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
											// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
											var addr = ''; // �ּ� ����
											var extraAddr = ''; // �����׸� ����

											//����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
											if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
												addr = data.roadAddress;
											} else { // ����ڰ� ���� �ּҸ� �������� ���(J)
												addr = data.jibunAddress;
											}

											// ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
											if (data.userSelectedType === 'R') {
												// ���������� ���� ��� �߰��Ѵ�. (�������� ����)
												// �������� ��� ������ ���ڰ� "��/��/��"�� ������.
												if (data.bname !== ''
														&& /[��|��|��]$/g
																.test(data.bname)) {
													extraAddr += data.bname;
												}
												// �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
												if (data.buildingName !== ''
														&& data.apartment === 'Y') {
													extraAddr += (extraAddr !== '' ? ', '
															+ data.buildingName
															: data.buildingName);
												}
												// ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
												if (extraAddr !== '') {
													extraAddr = ' ('
															+ extraAddr + ')';
												}
												// ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
												document
														.getElementById("sample2_extraAddress").value = extraAddr;

											} else {
												document
														.getElementById("sample2_extraAddress").value = '';
											}

											// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
											document
													.getElementById('sample2_postcode').value = data.zonecode;
											document
													.getElementById("sample2_address").value = addr;
											// Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
											document.getElementById(
													"sample2_detailAddress")
													.focus();

											// iframe�� ���� element�� �Ⱥ��̰� �Ѵ�.
											// (autoClose:false ����� �̿��Ѵٸ�, �Ʒ� �ڵ带 �����ؾ� ȭ�鿡�� ������� �ʴ´�.)
											element_layer.style.display = 'none';
										},
										width : '100%',
										height : '100%',
										maxSuggestItems : 5
									}).embed(element_layer);

							// iframe�� ���� element�� ���̰� �Ѵ�.
							element_layer.style.display = 'block';

							// iframe�� ���� element�� ��ġ�� ȭ���� ����� �̵���Ų��.
							initLayerPosition();
						}

						// �������� ũ�� ���濡 ���� ���̾ ����� �̵���Ű���� �ϽǶ�����
						// resize�̺�Ʈ��, orientationchange�̺�Ʈ�� �̿��Ͽ� ���� ����ɶ����� �Ʒ� �Լ��� ���� ���� �ֽðų�,
						// ���� element_layer�� top,left���� ������ �ֽø� �˴ϴ�.
						function initLayerPosition() {
							var width = 300; //�����ȣ���񽺰� �� element�� width
							var height = 400; //�����ȣ���񽺰� �� element�� height
							var borderWidth = 5; //���ÿ��� ����ϴ� border�� �β�

							// ������ ������ ������ ���� element�� �ִ´�.
							element_layer.style.width = width + 'px';
							element_layer.style.height = height + 'px';
							element_layer.style.border = borderWidth
									+ 'px solid';
							// ����Ǵ� ������ ȭ�� �ʺ�� ���� ���� �����ͼ� �߾ӿ� �� �� �ֵ��� ��ġ�� ����Ѵ�.
							element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
									+ 'px';
							element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
									+ 'px';
						}
					</script>
				
				<div class="form-group">
					<label for="inputGender">����</label><br>  <input type="radio"
						class="form-control" id="inputgen" name="gender" value="��">�� <input type="radio"
						class="form-control" id="inputgen" name="gender" value="��">��
						
				</div>
				<div class="form-group">
					<label for="inputbirth">birth</label> <input type="date"
						class="form-control" id="inputbirth" name="birth">
				</div>

				<div class="form-group">
					<label>��� ����</label>
					<div data-toggle="buttons">
						<label class="btn btn-primary active"> <span
							class="fa fa-check"></span> <input id="agree" type="checkbox"
							autocomplete="off" checked>
						</label> <a href="#">�̿���</a>�� �����մϴ�.
					</div>
				</div>

				<div class="form-group text-center">
					<button type="submit" id="join-submit" class="btn btn-primary">
						ȸ������<i class="fa fa-check spaceLeft"></i>
					</button>
					<input type="button" onclick="location.href='main1.jsp'" class="btn btn-warning" value= "�������">
						
					</button>
				</div>
			</form>
		</div>

	</article>

	<%@ include file="footer.jsp"%>

</body>
</html>