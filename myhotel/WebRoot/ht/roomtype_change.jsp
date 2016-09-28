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
    int rt_id= Integer.parseInt( request.getParameter("rt_id"));
    
    RoomTypeDao dao=new RoomTypeDao();
    RoomType rt=dao.findModelById(rt_id);
    
    pageContext.setAttribute("rtc_rt", rt);
      
   %>
     <div>
            <form  action="/myhotel/ht/RoomTypeChange" method="post">
                <div class="form-group">
                   <label for="exampleInputEmail1">房间类型ID</label>
                   <input type="text" class="form-control" name="rt_id" value="${rtc_rt.id}">
                </div>
                <div class="form-group">
                   <label for="exampleInputEmail1">房间类型</label>
                   <input type="text" class="form-control" name="rt_type" value="${rtc_rt.type}">
                </div>
                  <div class="form-group">
                   <label for="exampleInputEmail1">房间价格</label>
                   <input type="text" class="form-control" name="rt_price" value="${rtc_rt.price}">
                </div>
                 <div class="form-group">
                   <label for="exampleInputEmail1">房间数量</label>
                   <input type="text" class="form-control" name="rt_num" value="${rtc_rt.num}">
                </div>
  
                <button type="submit" class="btn btn-default">提交修改</button>
            </form>
         
         
     </div>
  </body>
</html>
