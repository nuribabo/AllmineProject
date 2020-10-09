<%@page import="com.model.RecipeDTO"%>
<%@page import="com.model.RecipeDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Recipe blog</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>VegefProject/WebContent/blog.jspoods - Free Bootstrap 4 Template by Colorlib</title>
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
    
     <style type="text/css">
.container1 {
	display: flex;
	width: 100%;
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
	width:30px;
	height:30px;
}

#item5 {
	
}
</style>
  </head>
  <body class="goto-here">
    <%
    ArrayList<ProductDTO> fruitlist = (ArrayList<ProductDTO>)session.getAttribute("flist");
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	ArrayList<RecipeDTO> ardao;
	RecipeDAO rdao = new RecipeDAO();
	String check = null;
	if (request.getParameter("check")!=null) {
		check = request.getParameter("check");	
	} else {
		check = "de";
	}
	ardao = rdao.recipe_import(check);
    ArrayList<RecipeDTO> selectlist = (ArrayList<RecipeDTO>)session.getAttribute("selectlist");
	%>
	
	<%@ include file="header.jsp"%>

    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html"></a></span> <span></span></p>
            <h1 class="mb-0 bread">Recipe</h1>
          </div>
        </div>
      </div>
    </div>
	
    <section class="ftco-section ftco-degree-bg">
    <div col-lg-13 ftco-animate align='center'>
    <table width=55%>
    <tr>
    <td align=left><div class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" href="recipe_blog"
                  id="dropdown04" data-toggle="dropdown" aria-haspopup="true"
                  aria-expanded="false">기본 정렬</a>
               <div class="dropdown-menu" aria-labelledby="dropdown04">
                  <a class="dropdown-item" href="./recipe_blog?check=de" class="active">기본 정렬</a> 
                  <a class="dropdown-item" href="./recipe_blog?check=<%="ra"%>">평점순 정렬</a>
                  <a class="dropdown-item" href="./recipe_blog?check=<%="pr"%>">선호도순 정렬</a>
               </div>
            </div></td>
    <td align=center>
    	<form action="SearchRecipeCon" class="search-form">
                <div class="form-group"><span class="icon ion-ios-search"></span>
                <input type="text" class="form-control" placeholder="Search..." name = "sword">
                </div></form>
    </td>
    </tr>
    </table>
    <br><br>
    </div>
    
      <div class="container">
        <div class="row">
          <div class="col-lg-13 ftco-animate">
					<div class="row">
 						<!-- 10개의 레시피 리스트 불러오기 -->
						<% for (int i=0; i<selectlist.size(); i++){ %>
							<div class="col-md-12 d-flex ftco-animate">
								<div class="blog-entry align-self-stretch d-md-flex">
									<a href="blog-single.html" class="block-20" style="background: url(<%=selectlist.get(i).getRecipe_img()%>) center center no-repeat; background-size:250px 250px;"></a>
									<div class="text d-block pl-md-4">
										<h3 class="heading"><a href="#"><%=selectlist.get(i).getRecipe_name()%></a></h3>
										<div class="meta mb-3">
											<div><a href="#">평점 <%=selectlist.get(i).getRecipe_rate()%></a></div>
											<div><a href="#">♥ <%=selectlist.get(i).getRecipe_preference()%></a></div>
										</div>
										<p style="width:795px;"><%=selectlist.get(i).getRecipe_ingredient()%></p>
										<p><a href="recipe_detail_blog.jsp?name=<%=selectlist.get(i).getRecipe_name()%>" class="btn btn-primary py-2 px-3">레시피 알아보기</a></p>
									</div>
								</div>
							</div>
						<%}%>
				</div>
			</div> <!-- .col-md-8 --> 
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
    
  </body>
</html>