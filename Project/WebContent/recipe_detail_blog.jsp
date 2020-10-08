<%@page import="com.model.RecipeDAO"%>
<%@page import="com.model.RecipeDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
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
</style>
<title></title>
</head>
<body>
 	<%
 	MemberDTO info = (MemberDTO) session.getAttribute("info");
 	/* DB���� ���� name �Ķ���͸� ��������, sql select�ϴ� ��� ����� */
 	String something_recipe = request.getParameter("name");
 	RecipeDAO rdao = new RecipeDAO();
 	RecipeDTO sore = rdao.recipe_one(something_recipe);
 	%>
 	<%@ include file="header.jsp"%>
 	
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p>
            <h1 class="mb-0 bread">Recipe</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 ftco-animate">
						<h2 class="mb-3" align="center"><%= sore.getRecipe_name()%></h2>
            <p align="center"><%= sore.getRecipe_ingredient() %></p>
            <p><img src="<%= sore.getRecipe_img()%>" alt="" class="img-fluid"></p>
            <p>������ ���� 1 </p>
            <h2 class="mb-3 mt-5">#2. ������ �󼼼��� ����</h2>
            <p>������ �󼼼��� 1</p>
            <p><img src="images/image_2.jpg" alt="" class="img-fluid"></p>
            <p>������ ����� ���� 1</p>
            <p>������ ����� ���� 2</p>
            <p>������ ����� ���� 3</p>
            <p>������ ����� ���� 4</p>
          
            <div class="about-author d-flex p-4 bg-light">
              <div class="bio align-self-md-center mr-4">
                <img src="images/person_1.jpg" alt="Image placeholder" class="img-fluid mb-4">
              </div>
              <div class="desc align-self-md-center">
                <h3>ALL MINE</h3>
                <p>�����е��� ����� ���ε� ����� ���� �� �ִ� ���ĵ��� �Ұ��ص帱�Կ�! ��̰� �ູ�� �Ļ�Ǽ���~~~��</p>
              </div>
            </div>


            <div class="pt-5 mt-5">
              <h3 class="mb-5">6 Comments</h3>
              <ul class="comment-list">
                <li class="comment">
                  <div class="vcard bio">
                    <img src="images/person_1.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>���μ�</h3>
                    <div class="meta">2020.10.08</div>
                    <p>�̰� �� �� �׳� ��԰� ���� ������ �� �Ʊ���. �ð��� �Ʊ��� ���� ������ �̵� �� �� ����� �յ��յ�</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>
                </li>

                <li class="comment">
                  <div class="vcard bio">
                    <img src="images/person_1.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>�贩��</h3>
                    <div class="meta">2020.10.08</div>
                    <p>��� �������� ���� �̷��� �غ��߰ڳ׿�!!! ���ְھ�� !!</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>

                  <ul class="children">
                    <li class="comment">
                      <div class="vcard bio">
                        <img src="images/person_1.jpg" alt="Image placeholder">
                      </div>
                      <div class="comment-body">
                        <h3>���Ǽ�</h3>
                        <div class="meta">2020.10.08</div>
                        <p>���� �ظ��ϸ� ����� �� ����� ��Ÿ���̱� �ѵ�, �̰� ���� ������ �ǰ� �ǽɽ����׿�. ���� �� ����� ���ƿ�.</p>
                        <p><a href="#" class="reply">Reply</a></p>
                      </div>


                      <ul class="children">
                        <li class="comment">
                          <div class="vcard bio">
                            <img src="images/person_1.jpg" alt="Image placeholder">
                          </div>
                          <div class="comment-body">
                            <h3>�Ӻ���</h3>
                            <div class="meta">2020.10.08</div>
                            <p>�ٳ��</p>
                            <p><a href="#" class="reply">Reply</a></p>
                          </div>

                            <ul class="children">
                              <li class="comment">
                                <div class="vcard bio">
                                  <img src="images/person_1.jpg" alt="Image placeholder">
                                </div>
                                <div class="comment-body">
                                  <h3>�����</h3>
                                  <div class="meta">2020.10.08</div>
                                  <p>JMTGR~~~~~ �Ƽ���� ���� ������ ������ �� ���ƿ� ��������</p>
                                  <p><a href="#" class="reply">Reply</a></p>
                                </div>
                              </li>
                            </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
              </ul>
              <!-- END comment-list -->
              
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">�򰡸� �����ּ���</h3>
                <% if (info!=null) { %>
                <form action="#" class="p-5 bg-light">
                  <div class="form-group">
                    <label for="name"><%= info.getName() %></label>
                    <input type="text" class="form-control" id="name">
                  </div>
                  <div class="form-group">
                    <label for="email"><%= info.getEmail() %></label>
                    <input type="email" class="form-control" id="email">
                  </div>
                  <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" cols="30" rows="10" class="form-control"></textarea>
                  </div>
                  <div class="form-group">
                    <input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
                  </div>
                </form>
                </div>
              <% } else { }%>
            </div>
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->

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