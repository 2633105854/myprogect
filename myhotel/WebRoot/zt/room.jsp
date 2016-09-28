<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="com.zt.manager.Room" %>
<%@ page import="com.zt.dao.RoomDAO" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'order.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="style1.css">
	-->
	<link rel="shortcut icon" type="image/x-icon" href="style/images/favicon.png" />
 	<link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
  </head>
  
  <body>
  	<div id="main_bg">
	<div id="main">
	<!-- header begins -->
	<div id="header">
	<div id="logo">
    	<a href="#">metamorph_sparks</a>
      	<h2><a href="#"><small>Company Slogan Goes Here</small></a></h2>
    </div>
   <div id="buttons">
      <a href="index.html" class="but_home"  title=""></a><div class="but_razd"></div>
      <a href="blog.html" class="but" title="">Blog</a><div class="but_razd"></div>
      <a href="gallery.html"  class="but" title="">Gallery</a><div class="but_razd"></div>
      <a href="about_us.html"  class="but" title="">About us</a><div class="but_razd"></div>
      <a href="contact_us.html" class="but" title="">Contact us</a>
    </div>
</div>
<!-- header ends -->
<div class="top">

<ul class="round">
			<li><img src="images/header1.jpg" alt="" /></li>
			<li><img src="images/header2.jpg" alt="" /></li>
			<li><img src="images/header3.jpg" alt="" /></li>
			<li><img src="images/header4.jpg" alt="" /></li>
			<li><img src="images/header5.jpg" alt="" /></li>
			<li><img src="images/header6.jpg" alt="" /></li>
</ul>
<script type="text/javascript" src="lib/jquery.js"></script>
<script type="text/javascript" src="lib/jquery.roundabout.js"></script>
<script type="text/javascript">
			
			$(document).ready(function() {
				$('.round').roundabout();
			});
		
		</script>
</div>

        <!-- content begins -->
        		<div class="cont_top"></div>
       			<div id="content">
                    <div class="cont_home">
                    	<div class="home_box">
                        	<h1>Lorem Ipsum Dolor</h1>
                            <div style="height:15px"></div>
                        	<img src="images/img11.jpg" alt="" />
                          <div style="height:10px;"></div>
                        	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur magna tortor, ultricies id pellentesque a, tristique in nulla. Donec commodo consectetur mauris quis sagittis. Donec ac lectus turpis, et eleifend dolor. <div style="height:5px"></div>
                        	<div style="height:20px;"><a class="read_l" href="#">more</a></div>
                        </div><div style="width: 40px; height:20px; float: left;"></div>
                        <div class="home_box">
                        	<h1>Etiam Vitae Enim</h1>
                            <div style="height:15px"></div>
                        	<img src="images/img12.jpg" alt="" />
                        	<div style="height:10px;"></div>
                        	Etiam vitae enim diam, in molestie ipsum. Aenean mollis diam nec dui commodo condimentum. Sed quam libero, luctus id pharetra et, iaculis quis lorem. Praesent magna orci, pharetra nec ornare id, porta id <div style="height:5px"></div>
 
                        	<div style="height:20px;"><a class="read_l" href="#">more</a></div>
                      </div><div style="width: 40px; height:20px; float: left;"></div>
                      <div class="home_box">
                        	<h1>Integer Id Mi Ligula</h1>
                            <div style="height:15px"></div>
                        	<img src="images/img13.jpg" alt="" />
                            <div style="height:10px;"></div>
                        	Integer id mi ligula, non aliquet diam. Ut venenatis arcu ut augue luctus lacinia. Nam pretium enim id magna vehicula at suscipit odio vehicula. Morbi mollis augue at sem tincidunt sit amet accumsan nibh <div style="height:5px"></div>
                        	<div style="height:20px;"><a class="read_l" href="#">more</a></div>
                      </div>
                        
                   	  <div style="clear: both"></div>
                    </div>
        		</div>
                <div class="cont_bot"></div>
    <!-- content ends --> 
    <div style="height:15px"></div>

   
</div>

</div>

<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
	<div id="wrapper">
	<!-- Begin Sidebar -->
	<div id="sidebar">
		 <div id="logo"><a href=""><img src="images/logoMenu.png" alt="Caprice" /></a></div>
		 
	<!-- Begin Menu -->
    <div id="menu" class="menu-v">
      <ul>
        <li><a href="index.jsp" class="active">Home</a>
        	
        </li>
        <li><a href="Client.jsp">用户信息管理</a>
        	
        </li>
        <li><a href="order.jsp">订单信息管理</a>
        	
        </li>
        <li><a href="room.jsp">房间信息管理</a>
        	
        </li>
        <li><a href="">员工信息管理</a></li>
      </ul>
    </div>
    <!-- End Menu -->
   
    
    <div class="sidebox">
    <ul class="share">
    	<li><a href="#"><img src="style/images/icon-rss.png" alt="RSS" /></a></li>
    	<li><a href="#"><img src="style/images/icon-facebook.png" alt="Facebook" /></a></li>
    	<li><a href="#"><img src="style/images/icon-twitter.png" alt="Twitter" /></a></li>
    	<li><a href="#"><img src="style/images/icon-dribbble.png" alt="Dribbble" /></a></li>
    	<li><a href="#"><img src="style/images/icon-linkedin.png" alt="LinkedIn" /></a></li>
    </ul>
    </div>

    
	</div>
	<!-- End Sidebar -->
	
	<!-- Begin Content -->
	<div id="content">
		<table align="center">
			<tr align="center">
				<td>房间id</td>
				<td>房间号</td>
				<td>房间类型</td>
				<td>房间状态</td>
			</tr>
			<% 
				RoomDAO rDao= new RoomDAO();
				if(rDao.getRoom()!=null){
					ArrayList<Room> list= rDao.getRoom();
					for(int i=0;i<list.size();i++){
					Room room=list.get(i);
			%>
			<tr align="center">
				<td><%=room.getR_id() %></td>
				<td><%=room.getR_num() %></td>
				<td><%=room.getRt_id() %></td>
				<td><%=room.getR_state() %></td>
			</tr>
			<% 
					}
				}
			%>
		</table>
	<div class="line"></div>
	
</div>
<!-- End Wrapper -->
<div class="clear"></div>
<script type="text/javascript" src="style/js/scripts.js"></script>
<!--[if !IE]> -->
<script type="text/javascript" src="style/js/jquery.corner.js"></script>
<!-- <![endif]-->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
  </body>
</html>
