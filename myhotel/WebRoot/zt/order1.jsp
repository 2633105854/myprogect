<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.zt.manager.Order" %>
<%@ page import="com.zt.dao.OrderDAO" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <script type="text/javascript " href="js/jquery.min.js"></script>
    <script type="text/javascript " href="js/jquery.parallax.js"></script>
    <script type="text/javascript " href="js/jquery-ui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="zt/css/order.css" media="all" />
	<script type="text/javascript">
		function updateOrder(){ 
        	var id = document.getElementById("del").value; 
			window.location.href="OrderServlet?id="+id+"&action=updateOrder";
        }
        function delectOrder(){
    		
        	 var radios = document.getElementByName("del"); 
        	 // var radios = $("input[name='del']:checked").val();
        	                               
	       	//根据 name集合长度 遍历name集合 
	      	for(var i=0;i<radios.length;i++) 
	     	{  
	     		//alert(radios[i]);
	          //判断那个单选按钮为选中状态 
	          if(radios[i].checked) 
	          { 
	          	 alert(radio[i].value);
	             window.location.href="OrderServlet?id="+radios[i].value+"&action=delectOrder";
	          }  
	        }
        }
		
	</script>

  </head>
  
  <body>
   <div class="up">
		<div class="top"><a href="zt/index.jsp">返回前台页面</a></div>
	</div>
	<div class="main">
		<div class="left">
			<div></div><br><br>
			<div></div>
		 	<div id="logo" align="center"><a href="zt/index.jsp"><img src="zt/images/logoMenu.png" alt="Caprice" /></a>
		 	</div>
			<div id="menu" class="menu-v">
				<ul>
       		 		<li><a href="index.jsp" class="active">Home</a>
        			</li>
        			<li><a href="Client.jsp">用户信息管理</a>
        			</li>
        			<li><a href="http://localhost:8080/myhotel/OrderServlet">订单信息管理</a>
       				</li>
       				<li><a href="">房间信息管理</a>
        			</li>
        			<li><a href="">员工信息管理</a></li>
      			</ul>
			</div>
		</div>
		
		<div class="right">
			<div class="r1">
				<div>订单信息</div>
					<form method="post" action="http://localhost:8080/myhotel/OrderServlet">
				<div align="center">
						输入订单ID:<input type="text" name="in_or_id" id="or_id" />
						输入客户ID:<input type="text" name="in_cl_id" id="cl_id" />
						选择查询类型:
						<select id="in_or_state" name="in_or_state">
							<option value="">---请选择---</option>
							<option value="已付">已付</option>
							<option value="未付">未付</option>
						</select>&nbsp;&nbsp;
					<button type="submit">搜索</button>
				</div>
				<div align="right">&nbsp;<button type="submit">删除</button></div>
				<div>
					<table  class="order" id="or" width="100%" align="center" border="1" cellpadding="0" cellspacing="0">
						<tr>
							<th>选择</th>
							<th>订单id</th>
							<th>客户id</th>
							<th>房间id</th>
							<th>入住时间</th>
							<th>入住时长</th>
							<th>订单状态</th>
							<th>是否修改</th>
						</tr>
						<% 
						
						List<Order> list = (List)request.getAttribute("list");
						for(int i = 0;i<list.size();i++){
							Order or=list.get(i);
							%>
							<tr align="center">
								<td>
									<input type="radio" name="myid" id="del"  value="<%=or.getOr_id()%>"/> 
								</td>
								<td><%=or.getOr_id() %></td>
								<td><%=or.getCl_id() %></td>
								<td><%=or.getR_id() %></td>
								<td><%=or.getOr_start_time() %></td>
								<td align="center">
									
									<input class="text" id="number" style="width: 30px" type="text" value="<%=or.getOr_days()%>"/>
									
								</td>
								<td><%=or.getOr_state() %></td>
								<td><a href="http://localhost:8080/myhotel/OrderUpdateServlet?osor_id=<%=or.getOr_id() %>">修改</a></td>
							</tr>
							<%
							}
						%>
						
					</table>
				</div>
				</form>
			</div>
			<div class="r2"></div>
		</div>
	</div>
	<script src="zt/js/order.js"></script>
  </body>
</html>
