<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.lsq.dao.*" %>
<%@page import="com.lsq.mode.*" %>
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
  <%
      RoomTypeDao rydao=new RoomTypeDao();
      ArrayList<RoomType> li=rydao.findRoomTypes();
      pageContext.setAttribute("ht_roomtype", li);
      
   %>
     <div>
     <table class="table">
         <tr>
            <td>房间类型ID</td><td>房间类型</td><td>房间价格</td><td>房间数量</td><td>操作</td>
            <c:forEach items="${ht_roomtype}" var="v">
                 <tr>
                <td>${v.id}</td>
                <td>${v.type}</td>
                <td>${v.price}</td>
                <td>${v.num}</td>
                
                <td>
                <a href="roomtype_change.jsp?rt_id=${v.id}"><button class="btn">修改</button></a>
               
                </td>
                </tr>
            </c:forEach>
            
         </tr>
      </table>
     </div>
  </body>
</html>
