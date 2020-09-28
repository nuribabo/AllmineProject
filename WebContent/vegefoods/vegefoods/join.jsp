<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Vegefoods</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="shop.html">Shop</a>
              	<a class="dropdown-item" href="wishlist.html">Wishlist</a>
                <a class="dropdown-item" href="product-single.html">Single Product</a>
                <a class="dropdown-item" href="cart.html">Cart</a>
                <a class="dropdown-item" href="checkout.html">Checkout</a>
              </div>
            </li>
	          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	          <li class="nav-item cta cta-colored"><a href="cart.html" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

	        </ul>
	      </div>
	      
	      <div class="col-md pr-4 d-flex topper align-items-center" display = flex;>
					    	<!-- <div class="col-md-5 pr-4 d-flex topper align-items-center"></div> -->
						    
						    <div class="text"><a href = "member.html">ȸ������</a></div>
						    <div class="text"><a href = "member.html">�α���</a></div>
						    <div class="text"><a href = "member.html">������</a></div>
			</div>
						
	    </div>
	  </nav>
	  
	    <article class="container">
            <div class="page-header">
                <div class="col-md-6 col-md-offset-3">
                <h3>ȸ������ Form</h3>
                </div>
            </div>
            <div class="col-sm-6 col-md-offset-3">
                <form role="form">
                    <div class="form-group">
                        <label for="inputName">����</label>
                        <input type="text" class="form-control" id="inputName" placeholder="�̸��� �Է��� �ּ���">
                    </div>
                    <div class="form-group">
                        <label for="InputEmail">�̸��� �ּ�</label>
                        <input type="email" class="form-control" id="InputEmail" placeholder="�̸��� �ּҸ� �Է����ּ���">
                    </div>
                    <div class="form-group">
                        <label for="inputPassword">��й�ȣ</label>
                        <input type="password" class="form-control" id="inputPassword" placeholder="��й�ȣ�� �Է����ּ���">
                    </div>
                    <div class="form-group">
                        <label for="inputPasswordCheck">��й�ȣ Ȯ��</label>
                        <input type="password" class="form-control" id="inputPasswordCheck" placeholder="��й�ȣ Ȯ���� ���� �ٽ��ѹ� �Է� �� �ּ���">
                    </div>
                    <div class="form-group">
                        <label for="inputMobile">�޴��� ��ȣ</label>
                        <input type="tel" class="form-control" id="inputMobile" placeholder="�޴�����ȣ�� �Է��� �ּ���">
                    </div>
                    <div class="form-group">
                        <label for="inputtelNO">�繫�� ��ȣ</label>
                        <input type="tel" class="form-control" id="inputtelNO" placeholder="�繫�ǹ�ȣ�� �Է��� �ּ���">
                    </div>

                    <div class="form-group">
                    <label>��� ����</label>
                    <div data-toggle="buttons">
                    <label class="btn btn-primary active">
                    <span class="fa fa-check"></span>
                    <input id="agree" type="checkbox" autocomplete="off" checked>
                    </label>
                    <a href="#">�̿���</a>�� �����մϴ�.
                    </div>
                    </div>

                    <div class="form-group text-center">
                        <button type="submit" id="join-submit" class="btn btn-primary">
                            ȸ������<i class="fa fa-check spaceLeft"></i>
                        </button>
                        <button type="submit" class="btn btn-warning">
                            �������<i class="fa fa-times spaceLeft"></i>
                        </button>
                    </div>
                </form>
            </div>

        </article>



</body>
</html>