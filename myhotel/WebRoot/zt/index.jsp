<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en" class="ie_11_scroll">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="hhhwidth=device-width, initial-scale=1">
<title>Home</title>
<!-- CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/templatemo_style.css">
<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="favicon.png" />
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
<!-- Top menu -->
<div class="show-menu">
	<a href="#" class="shadow-top-down">+</a>
</div>
<nav class="main-menu shadow-top-down">
	<ul class="nav nav-pills nav-stacked">
		<li><a href="#templatemo_home" class="scroll_effect">Home</a></li>
		<li><a href="#templatemo_features" class="scroll_effect">Manager</a></li>
		<li><a href="#templatemo_download" class="scroll_effect">Culture</a></li>
		<li><a href="#templatemo_contact" class="scroll_effect">Contact</a></li>
	</ul>
</nav>
<!-- Home -->
<section id="templatemo_home">
	<div class="container">
		<div class="templatemo_home_inner_wapper">
			<h1 class="text-center"><i class="fa fa-hotel (alias)"></i> 如花酒店</h1>
		</div>
		<div class="templatemo_home_inner_wapper">
			<h2 class="text-center">管理台</h2>
			<br>
			<br>
		</div>
		<div class="templatemo_home_inner_wapper btn_wapper">
			<div class="col-sm-6">
				<a href="login.html" class="btn col-xs-12 scroll_effect shadow-top-down">
					<i class="fa fa-chevron-circle-right"></i> <%=request.getSession().getAttribute("name") %>管理员
				</a>
			</div>
			<div class="col-sm-6">
				<a href="register.html" class="btn col-xs-12 scroll_effect shadow-top-down">
					<i class="fa fa-child"></i> 注册
				</a>
			</div>
		</div>
	</div>
</section>
<!-- Features -->
<section id="templatemo_features">
	<div class="container-fluid">
		<header class="template_header">
			<h1 class="text-center"><span>...</span> 管理层 <span>...</span></h1>
		</header>
		<div class="col-sm-12">
			<div class="col-sm-6 col-lg-3 feature-box">
				<div class="feature-box-inner">
					<div class="feature-box-icon">
						<i class="fa fa-user"></i>
					</div>
					<p>
						<a href="Client.jsp" target="_blank">用户信息管理</a>
					</p>
				</div>
			</div>
			<div class="col-sm-6 col-lg-3 feature-box">
				<div class="feature-box-inner">
					<div class="feature-box-icon">
						<i class="fa fa-home"></i>
					</div>
					<p>
						<a href="http://localhost:8080/myhotel/ht/index.jsp">房间信息管理</a>
					</p>
				</div>
			</div>
			<div class="col-sm-6 col-lg-3 feature-box">
				<div class="feature-box-inner">
					<div class="feature-box-icon">
						<i class="fa fa-files-o"></i>
					</div>
					<p>
						<a href="http://localhost:8080/myhotel/OrderServlet">订单信息管理</a>
					</p>
				</div>
			</div>
			<div class="col-sm-6 col-lg-3 feature-box">
				<div class="feature-box-inner">
					<div class="feature-box-icon">
						<i class="fa fa-users"></i>
					</div>
					<p>
						<a href="http://localhost:8080/myhotel/yzz/user-list.jsp">员工信息管理</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Download -->
<section id="templatemo_download">
	<div class="container">
		<header class="template_header">
			<h1 class="text-center"><span>...</span> 酒店文化 <span>...</span></h1>
		</header>
		<div class="templatemo_download_text_wapper">
			<p>
                如果您想在旅途中享受到游泳带来的清凉与快乐，那没有比该酒店更合适的选择了。 酒店配有游泳池，您可以尽情享受水之乐趣。
                品质彰显与细节之中，饮食，也是旅途中不可错过的风景。在历史酒店，您可在餐厅享用到传统的皇后镇美食。
                酒店一直致力于为广大顾客提供一流设施与尊贵的服务。酒店为您提供免费的停车服务。
                为顾客营造宾至如归的氛围，一直是我们酒店不曾动摇的理念。酒店提供儿童设施，残疾人服务等。让所有来到酒店的人都能感受到家一般的温暖。
			</p>
		</div>
		<div class="col-xs-12">
			<h2>15,050,500</h2>
		</div>
		<div class="col-xs-12">
			<p>Over 15 millions user on Google play store</p>
		</div>
		<div class="col-xs-12">
			<a href="#" class="shadow-top-down"><img src="images/download_btn.png"/></a>
		</div>
	</div>
</section>
<!-- Contact -->
<section id="templatemo_contact">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<ul class="nav nav-pills social">
					<li><a href="#" class="shadow-top-down social-facebook"><i class="fa fa-facebook-official"></i></a></li>
					<li><a href="#" class="shadow-top-down social-twitter"><i class="fa fa-twitter-square"></i></a></li>
					<li><a href="#" class="shadow-top-down social-youtube"><i class="fa fa-youtube-square"></i></a></li>
					<li><a href="#" class="shadow-top-down social-instagram"><i class="fa fa-instagram"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
</section>
<!-- Footer -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 footer-copyright">
				
			</div>
		</div>
	</div>
</footer>
<!-- require plugins -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.parallax.js"></script>
<!-- template mo config script -->
<script src="js/templatemo_scripts.js"></script>
</body>
</html>