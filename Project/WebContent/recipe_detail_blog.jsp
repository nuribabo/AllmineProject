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
.review_score {
    float: none;
    border: 1px solid #d6d6d6;
    padding: 21px 0 14px 17px;
    margin-top: 30px;
    margin-bottom: 30px;
}


.blind {
  position: absolute;
  overflow: hidden;
  margin: -1px;
  padding: 0;
  width: 1px;
  height: 1px;
  border: none;
  clip: rect(0, 0, 0, 0);
}

.startRadio {
  display: inline-block;
  overflow: hidden;
  height: 40px;
}
.startRadio:after {
  content: "";
  display: block;
  position: relative;
  z-index: 10;
  height: 40px;
  background: url("images/star_w2.png") repeat-x 0 0;
  background-size: contain;
  pointer-events: none;
}
.startRadio__box {
  position: relative;
  z-index: 1;
  float: left;
  width: 20px;
  height: 40px;
  cursor: pointer;
}
.startRadio__box input {
  opacity: 0 !important;
  height: 0 !important;
  width: 0 !important;
  position: absolute !important;
}
.startRadio__box input:checked + .startRadio__img {
  background-color: #82ae46;
}
.startRadio__img {
  display: block;
  position: absolute;
  right: 0;
  width: 500px;
  height: 40px;
  pointer-events: none;
}



.btn_like {
  margin-right:30px;
  float:right;
  width: 44px;
  height: 44px;
  border: 1px solid #e8e8e8;
  border-radius: 44px;
  font-family: notokr-bold,sans-serif;
  font-size: 14px;
  line-height: 16px;
  background-color: #fff;
  color: #DD5D54;
  box-shadow: 0 2px 2px 0 rgba(0,0,0,0.03);
  transition: border .2s ease-out,box-shadow .1s ease-out,background-color .4s ease-out;
  cursor: pointer;
}

.btn_like:hover {
  border: 1px solid rgba(228,89,89,0.3);
  background-color: rgba(228,89,89,0.02);
  box-shadow: 0 2px 4px 0 rgba(228,89,89,0.2);
}

.btn_unlike .img_emoti {
    background-position: -30px -120px;
}

.img_emoti {
    display: inline-block;
    overflow: hidden;
    font-size: 0;
    line-height: 0;
    background: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/img_emoti.png?v=20180410) no-repeat;
    text-indent: -9999px;
    vertical-align: top;
    width: 20px;
    height: 17px;
    margin-top: 1px;
    background-position: 0px -120px;
    text-indent: 0;
}

.btn_like .ani_heart_m {
    margin: -63px 0 0 -63px;
}

.ani_heart_m {
    display: block;
    position: absolute;
    top: 50%;
    left: 50%;
    width: 125px;
    height: 125px;
    margin: -63px 0 0 -63px;
    pointer-events: none;
}

.ani_heart_m.hi {
    background-image: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/retina/zzim_on_m.png);
    -webkit-background-size: 9000px 125px;
    background-size: 9000px 125px;
    animation: on_m 1.06s steps(72);
}

.ani_heart_m.bye {
    background-image: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/retina/zzim_off_m.png);
    -webkit-background-size: 8250px 125px;
    background-size: 8250px 125px;
    animation: off_m 1.06s steps(66);
}

@keyframes on_m {
  from { background-position: 0 }
  to { background-position: -9000px }
}

@keyframes off_m {
  from { background-position: 0 }
  to { background-position: -8250px }
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
            <p align="center">��� - <%= sore.getRecipe_ingredient() %><br><br></p>
            <p align="center"><img width = 500px height = 500px src="<%= sore.getRecipe_img()%>" alt="" class="img-fluid"></p>
            <p align="center"><br><br><br><img src="ingredient.jpg"><br><br><br></p>
            <h2 align="center"class="mb-3 mt-5" >#2. ������ġ� ����� ����</h2>
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
          	<br><br>
   
  <div class="review_score">
					<b style="float:left;line-height:50px;height:40px;font-size:20px; margin-right:20px" >���ϱ�</b>
  <div class="startRadio">
    <label class="startRadio__box">
        <input type="radio" name="star" id="">
        <span class="startRadio__img"><span class="blind">�� 1��</span></span>
    </label>
    <label class="startRadio__box">
        <input type="radio" name="star" id="">
        <span class="startRadio__img"><span class="blind">�� 1.5��</span></span>
    </label>
    <label class="startRadio__box">
        <input type="radio" name="star" id="">
        <span class="startRadio__img"><span class="blind">�� 2��</span></span>
    </label>
    <label class="startRadio__box">
        <input type="radio" name="star" id="">
        <span class="startRadio__img"><span class="blind">�� 2.5��</span></span>
    </label>
    <label class="startRadio__box">
        <input type="radio" name="star" id="">
        <span class="startRadio__img"><span class="blind">�� 3��</span></span>
    </label>
    <label class="startRadio__box">
        <input type="radio" name="star" id="">
        <span class="startRadio__img"><span class="blind">�� 3.5��</span></span>
    </label>
    <label class="startRadio__box">
        <input type="radio" name="star" id="">
        <span class="startRadio__img"><span class="blind">�� 4��</span></span>
    </label>
    <label class="startRadio__box">
        <input type="radio" name="star" id="">
        <span class="startRadio__img"><span class="blind">�� 4.5��</span></span>
    </label>
    <label class="startRadio__box">
        <input type="radio" name="star" id="">
        <span class="startRadio__img"><span class="blind">�� 5��</span></span>
    </label>
    <label class="startRadio__box">
        <input type="radio" name="star" id="">
        <span class="startRadio__img"><span class="blind">�� 5.5��</span></span>
    </label>
</div>
  <button type="button" class="btn_like">
  <span class="img_emoti">���ƿ�</span>
  <span class="ani_heart_m"></span>
  <%  %>
  </button>
</div>
<br><br>
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
  <script>
$('button').click(function(){
  if($(this).hasClass('btn_unlike')){
    $(this).removeClass('btn_unlike');
    $('.ani_heart_m').removeClass('hi');
    $('.ani_heart_m').addClass('bye');
  }
  else{
    $(this).addClass('btn_unlike');
    $('.ani_heart_m').addClass('hi');
    $('.ani_heart_m').removeClass('bye');
  }
});
</script>
	
</body>
</html>