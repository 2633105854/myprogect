<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.lsq.dao.*" %>
<%@page import="com.lsq.mode.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
      <link rel="stylesheet" href="css/myht.css">
     <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
      
      <link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
      <script src="bootstrap/jquery-3.1.0.min.js"></script>
      <script src="bootstrap/bootstrap.min.js"></script>
    
  </head>
     
  <body>
  <%
    RoomTypeDao rtdao=new RoomTypeDao();
    ArrayList<RoomType> li=rtdao.findRoomTypes();
    pageContext.setAttribute("rc_rt", li);
   %>
   <diV>
   <form class="form-inline" action="/myhotel/ht/RoomSelect" method="post">
       <div class="form-group">
          <label for="exampleInputName2">房间号</label>
          <input type="text" class="form-control" name="r_num" id="exampleInputName2" >
       </div>
        <div class="form-group">
         <label for="exampleInputEmail2">房间状态</label>
         <input type="text" class="form-control" name="r_state"  id="exampleInputEmail2" >
        </div>
         <div class="form-group">
         <label for="exampleInputEmail2">房间类型</label>
             <select name="rt_id" class="form-control">
               <option value="-1" id="xuanze">所有</option>
               <c:forEach items="${rc_rt }"  var ="li">
                   <option id="xuanze"  value="${li.id}">${li.type}</option>
               </c:forEach>
               
                 
             </select>
        </div>
        <button type="submit" class="btn btn-default">查看</button>
   </form> 
   </diV>
   <div>
     <jsp:include page="room_socket_list.jsp"></jsp:include>
   </div>
      
  </body>
</html>
