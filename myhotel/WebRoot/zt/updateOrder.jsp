<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
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
    <script type="text/javascript " href="zt/js/jquery.min.js"></script>
    <script type="text/javascript " href="zt/js/jquery.parallax.js"></script>
    <script type="text/javascript " href="zt/js/jquery-ui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="zt/css/order.css" media="all" />
	<script src="zt/js/jquery.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		function check(){
			var cl_id = trim($("#cl_id").val());
			if(cl_id != ""){
				$("#cl_id").html("&nbsp;<img src='<%=basePath%>images/right.gif' align='absmiddle'/>");
			}else{
				$("#cl_id").html("&nbsp;<img src='<%=basePath%>images/error.gif' align='absmiddle'/>&nbsp;<font color='red'>客户ID不能为空！</font>");
				$("#cl_id").focus();
				return false;
			}
			
			var r_id = trim($("#r_id").val());
			if(r_id != ""){
				$("#r_id").html("&nbsp;<img src='<%=basePath%>images/right.gif' align='absmiddle'/>");
			}else{
				$("#r_id").html("&nbsp;<img src='<%=basePath%>images/error.gif' align='absmiddle'/>&nbsp;<font color='red'>房间ID不能为空！</font>");
				$("#r_id").focus();
				return false;
			}
			var or_start_time = trim($("#or_start_time").val());
			if(or_start_time != ""){
				$("#or_start_time").html("&nbsp;<img src='<%=basePath%>images/right.gif' align='absmiddle'/>");
			}else{
				$("#or_start_time").html("&nbsp;<img src='<%=basePath%>images/error.gif' align='absmiddle'/>&nbsp;<font color='red'>入住时间不能为空！</font>");
				$("#or_start_time").focus();
				return false;
			}
			var or_days = trim($("#or_days").val());
			if(or_days != ""){
				$("#or_days").html("&nbsp;<img src='<%=basePath%>images/right.gif' align='absmiddle'/>");
			}else{
				$("#or_days").html("&nbsp;<img src='<%=basePath%>images/error.gif' align='absmiddle'/>&nbsp;<font color='red'>入住时长不能为空！</font>");
				$("#or_days").focus();
				return false;
			}
			var or_state = trim($("#or_state").val());
			if(or_state != ""){
				$("#or_state").html("&nbsp;<img src='<%=basePath%>images/right.gif' align='absmiddle'/>");
			}else{
				$("#or_state").html("&nbsp;<img src='<%=basePath%>images/error.gif' align='absmiddle'/>&nbsp;<font color='red'>订单状态不能为空！</font>");
				$("#or_state").focus();
				return false;
			}
			return true;
		}
		
		function doSubmit(){
			if(check()){
				document.edit.submit();
			}
		}
		
	</script>

  </head>
  
  <body>
   <div class="up">
		
	</div>
	<div class="main">
		<div class="left">
			<div></div><br><br>
			<div></div>
		 	<div id="logo" align="center"><a href="zt/index.jsp"><img src="zt/images/logoMenu.png" alt="Caprice" /></a>
		 	</div>
			<div id="menu" class="menu-v">
				<ul>
       		 		<li><a href="zt/index.jsp" class="active">Home</a>
        			</li>
        			<li><a href="Client.jsp">用户信息管理</a>
        			</li>
        			<li><a href="OrderServlet">订单信息管理</a>
       				</li>
       				<li><a href="room.jsp">房间信息管理</a>
        			</li>
        			<li><a href="">员工信息管理</a></li>
      			</ul>
			</div>
		</div>
		
		<div class="right">
			<div class="r1">
				<div class="place"><span>位置：</span>
    			<ul class="placeul">
        			<li><a href="zt/index.jsp">首页</a></li>
					<li><a href="OrderServlet">后台管理</a></li>
					<li>订单修改</li> 
    			</ul>
	</div>
				<form name="edit" method="post" action="http://localhost:8080/myhotel/OrderUpdateServlet?&action=sub">
					<table>
						<tr>
							<td colspan="2">订单信息编辑辑</td>
						</tr>
						<tr>
							<td>订单ID:</td>
							<td><input type="text" readonly="readonly" name="or_id" id="or_id" value="<%=request.getSession().getAttribute("osor_id")%>"/></td>
						</tr>
						<tr>
							<td>客户ID:</td>
							<td><input type="text" id="cl_id" name="cl_id" value=""/></td>
						</tr>
						<tr>
							<td>房间ID:</td>
							<td><input type="text" id="r_id" name="r_id" value=""/></td>
						</tr>
						<tr>
							<td>入住时间:</td>
							<td><input type="text" id="or_start_time" name="or_start_time" value=""/></td>
						</tr>
						<tr>
							<td>入住时长:</td>
							<td><input type="text" id="or_days" name="or_days" value=""/></td>
						</tr>
						<tr>
							<td>订单状态:</td>
							<td>
								<select id="or_state" name="or_state">
									<option value=""  >----请选择----</option>
									<option value="已付">已付</option>
									<option value="未付">未付</option>
								</select>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input class="button" type="submit" name="确认" value="确认" onClick="doSubmit()" />
								&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
					</table>
				</form>
			</div>
			
		</div>
	</div>
	
  </body>
</html>
