<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
  <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
      
      <link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
      <script src="bootstrap/jquery-3.1.0.min.js"></script>
      <script src="bootstrap/bootstrap.min.js"></script>
      <style type="text/css">

body {
	background-image: url(images/body.jpg);
}

</style>
  </head>
     
  <body>
      <table class="table">
         <tr>
            <td>房间ID</td><td>房间号</td><td>房间类型</td><td>房间状态</td><td>操作</td>
            <c:forEach items="${rs_rli}" var="v">
                 <tr>
                <td>${v.r_id}</td>
                <td>${v.r_num}</td>
                <td>${v.rt_id}</td>
                <td>${v.state}</td>
                
                <td>
                <a href="http://localhost:8080/myhotel/ht/room_change.jsp?r_id=${v.r_id}"><button class="btn">修改</button></a>
               
                </td>
                </tr>
            </c:forEach>
            
         </tr>
      </table>
  </body>
</html>
