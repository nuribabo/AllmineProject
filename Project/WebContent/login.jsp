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

		<%@ include file="header.jsp"%>
		
		
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
		
		
		<br><br><br><br><br>
		</div>
	</div>
	
		<%@ include file="footer.jsp"%>
    
</body>
</html>