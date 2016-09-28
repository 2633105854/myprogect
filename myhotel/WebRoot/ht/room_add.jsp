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
  
    
    RoomTypeDao rtdao=new RoomTypeDao();
    ArrayList<RoomType> li=rtdao.findRoomTypes();
    pageContext.setAttribute("rc_rt", li);
    
    
   %>
        
         <form action="/myhotel/ht/HoomAdd" method="post">
    
        <div class="form-group">
           <label for="exampleInputEmail1">房间号</label>
            <input type="text" class="form-control" name="room_num"  value="">
        </div>
        <div class="form-group">
         <label for="exampleInputEmail1">房间类型</label>
               <select name="rt_id" class="form-control">
          
               <c:forEach items="${rc_rt }"  var ="li">
                   <option id="xuanze"  value="${li.id}">${li.type}</option>
               </c:forEach>
               
                 
             </select>
          </div>
          <div class="form-group">
              <label for="exampleInputEmail1">房间状态</label>
              <input type="text" class="form-control" name="room_state" value="${room.state}" >
         </div>
    
           <button type="submit" class="btn btn-default">Submit</button>
     </form>
        
  </body>
</html>
