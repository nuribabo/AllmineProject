<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style>
	
	
	/* div.container{
		background-color : green;
	} */
	
	
</style>
<title>Insert title here</title>
 <link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/icomoon.css">

<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Bootstrap CSS -->
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  -->
    <title>�α��� ��</title>

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
	          <li class="nav-item active"><a href="main1.jsp" class="nav-link">Home</a></li>
	          <li class="nav-item dropdown">
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
	          <li class="nav-item cta cta-colored"><a href="cart.jsp" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

	        </ul>
	      </div>
	      
	      <div class="col-md pr-4 d-flex topper align-items-center " display = flex;>
					    	<!-- <div class="col-md-5 pr-4 d-flex topper align-items-center"></div> -->
						    
						    
						    <div class="text"><a href = "join.jsp">ȸ������</a></div>
						    <div class="text"><a href = "login.jsp">�α���</a></div>
						    
						    <div class="text"><a href = "member.html">������</a></div>
						    
			</div>
						
	    </div>
	  </nav>

 <div class="card align-middle" style="width:20rem; border-radius:20px;  margin:auto; margin-top:280px;">
		<div class="card-title" style="margin-top:30px;">
			<h2 class="card-title text-center" style="color:#113366;">�α���</h2>
		</div>
		<div class="card-body">
      <form class="form-signin" action = "LoginService" method="POST" onSubmit="logincall();return false">
        <h5 class="form-signin-heading"></h5>
        <label for="inputEmail" class="sr-only">Your ID</label>
        <input type="text" id="uid" name="id" class="form-control" placeholder="Your ID" required autofocus><BR>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="upw" name="pw" class="form-control" placeholder="Password" required><br>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> ����ϱ�
          </label>
        </div>
        
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">�� �� ��</button>
        
      </form>
      <br>
      <a href="join.jsp" class="btn btn-lg btn-primary btn-block"><span class="txt_type">ȸ������</span></a>
        <!-- <button id="btn-Yes2" class="btn btn-lg btn-primary btn-block" type="submit">ȸ������</button> --> 
		</div>
	</div>
	
		<%@ include file="footer.jsp"%>
    
</body>
</html>