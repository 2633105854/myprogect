<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="com.zt.dao.ClientDAO" %>
<%@ page import="com.zt.manager.Client" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" type="image/x-icon" href="style/images/favicon.png" />
 	<link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
  </head>
  
  <body>
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
				<td>id</td>
				<td>用户名</td>
				<td>密码</td>
				<td>真实姓名</td>
				<td>身份证号</td>
				<td>联系方式</td>
				<td>会员</td>
			</tr>
			<% 
				ClientDAO clDao=new ClientDAO();
				if(clDao.selectClient()!=null){
					ArrayList<Client> list = clDao.selectClient();
					for(int i=0;i<list.size();i++){
						Client cl = list.get(i);
				
			%>
			<tr align="center">
				<td><%=cl.getCl_id() %></td>
				<td><%=cl.getCl_name() %></td>
				<td><%=cl.getCl_password() %></td>
				<td><%=cl.getCl_realname() %></td>
				<td><%=cl.getCl_card() %></td>
				<td><%=cl.getCl_phone() %></td>
				<td><%=cl.getCl_vip() %></td>
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
