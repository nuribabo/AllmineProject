<%@page import="com.model.CommentVO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
 	String pattern = "yyyy.MM.dd";
 	SimpleDateFormat time = new SimpleDateFormat(pattern);
 	String now_day = time.format(new Date());
 	CommentVO something = null;
 	if ((CommentVO)session.getAttribute("Comment")!=null){
 		something = (CommentVO)session.getAttribute("Comment");
 	}; %>
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
          <div class="col-lg-13 ftco-animate">
			<h2 class="mb-3" align="center"><%= sore.getRecipe_name() %><br><br></h2>
			<p align="center">���� - <%= sore.getRecipe_rate() %></p>
			<p align="center"> �� - <%= sore.getRecipe_preference() %></p>
            <p align="center"><%= sore.getRecipe_ingredient() %><br><br></p>
            <p align="center"><img width = 500px height = 500px src="<%= sore.getRecipe_img()%>" alt="" class="img-fluid"></p>
            <p align="center"><br><br><br><img src="ingredient.jpg"><br><br><br></p>
            <h2 align="center"class="mb-3 mt-5" >#2. ������ �󼼼��� ����</h2>
            <p align="center">������ġ�, ��� ������~?</p>
            <p align="center"><img src="https://d1hk7gw6lgygff.cloudfront.net/video/906/Kimchi_stew_L.mp4" alt="" class="img-fluid"></p>
            <p align="center"><img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/56751/org_resized_1.jpg&convert=jpgmin&rt=600"></p>
            <p align="center">�������� ������ ����ְ� ���Ŀ� �κθ� �Ա����� �������ش�.<br></p>
            <p align="center"><img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/56752/org_resized_2.jpg&convert=jpgmin&rt=600"></p>
            <p align="center">�Ŀ����� �θ� ���� ������⸦ ���ٰ� ��ġ�� �ְ� �ٽ��ѹ� �����ش�.<br></p>
            <p align="center"><img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/56753/org_resized_3.jpg&convert=jpgmin&rt=600"></p>
            <p align="center">��, ���尡��, ����, ���������� �ְ� �ѼҲ� ���̴� ������ ��Ḧ �־� �ѹ� �� ���δ�.<br></p>
            <p align="center"><img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/56754/org_resized_4.jpg&convert=jpgmin&rt=600"></p>
            <p align="center">��������� ���⸧�� �ְ� ���� ���ֽø� �ϼ��˴ϴ�.<br></p>
          	<br><br><br><br>
            <div class="about-author d-flex p-4 bg-light">
              <div class="bio align-self-md-center mr-4">
                <img width = 250px height = 250px src="images/person_1.jpg" alt="Image placeholder" class="img-fluid mb-4">
              </div>
              <div class="desc align-self-md-center">
                <h3>ALL MINE</h3>
                <p>�����е��� ����� ���ε� ����� ���� �� �ִ� ���ĵ��� �Ұ��ص帱�Կ�! ��̰� �ູ�� �Ļ�Ǽ���.</p>
              </div>
            </div>


            <div class="pt-5 mt-5">
              <h3 class="mb-5">Comments</h3>
              <ul class="comment-list">
                <li class="comment">
                  <div class="vcard bio">
                    <img src="jms.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>���μ�</h3>
                    <div class="meta">2020.10.08</div>
                    <p>�̰� �� �� �׳� ��԰� ���� ������ �� �Ʊ���. �ð��� �Ʊ��� ���� ������ �̵� �� �� ����� �յ�</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>
                </li>

                <li class="comment">
                  <div class="vcard bio">
                    <img src="knl.jpg" alt="Image placeholder">
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
                        <img src="images/person_2.jpg" alt="Image placeholder">
                      </div>
                      <div class="comment-body">
                        <h3>���Ǽ�</h3>
                        <div class="meta">2020.10.08</div>
                        <p>���� �ظ��ϸ� ����� �� ����� ��Ÿ���̱� �ѵ�, �̰� ���� ������ �ǰ� �ǽɽ����׿�. ����� �� ����� ���ƿ�.</p>
                        <p><a href="#" class="reply">Reply</a></p>
                      </div>


                      <ul class="children">
                        <li class="comment">
                          <div class="vcard bio">
                            <img src="lbm.jpg" alt="Image placeholder">
                          </div>
                          <div class="comment-body">
                            <h3>�Ӻ���</h3>
                            <div class="meta">2020.10.08</div>
                            <p>���� �ٳ��</p>
                            <p><a href="#" class="reply">Reply</a></p>
                          </div>

                            <ul class="children">
                              <li class="comment">
                                <div class="vcard bio">
                                  <img src="images/person_4.jpg" alt="Image placeholder">
                                </div>
                                <div class="comment-body">
                                  <h3>�����</h3>
                                  <div class="meta">2020.10.08</div>
                                  <p>�����ϱ� JMTGR~~~~~ �Ƽ���� ���� ������ ������ �� ���ƿ� ��������</p>
                                  <p><a href="#" class="reply">Reply</a></p>
                                </div>
                              </li>
                            </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
               	<!-- ���� comment ����� ����Ѵٸ� �ؿ� ��µ� �޽����� -->
                <% if (something!=null){ %>
                <li class="comment">
                  <div class="vcard bio">
                    <img src="basic.jpg">
                  </div>
                  <div class="comment-body">
                    <h3><%= something.getName()%></h3>
                    <div class="meta"><%= something.getDate() %></div>
                    <p><%= something.getMessage() %></p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>
                  <% } %>
              </ul>
              <!-- END comment-list -->
              <% if (info!=null) { %>
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">�򰡸� �����ּ���</h3>    
                <form action="comment_func" class="p-5 bg-light">
                  <div class="form-group">
                    <label for="c_name"><%= info.getName() %></label>
                  </div>
                  <div class="form-group">
                    <label for="c_date"><%= now_day %></label>
                  </div>
                  <div class="form-group">
                    <label for="message">Message</label>
                    <textarea name="c_message" cols="30" rows="10" class="form-control"></textarea>
                  </div>
                  <div class="form-group">
                    <input align="center" type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
                  </div>
                </form>
                </div>
              <% } %>
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