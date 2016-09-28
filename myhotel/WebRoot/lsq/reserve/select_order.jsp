<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.lsq.dao.*" %>
<%@page import="com.lsq.mode.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <link rel="stylesheet" href="css/my.css">
  
     <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
     <link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
     <script src="bootstrap/jquery-3.1.0.min.js"></script>
     <script src="bootstrap/bootstrap.min.js"></script>

  </head>
  
  <body>
  
 <%
     RoomTypeDao  rt_dao=new RoomTypeDao();
     ArrayList<RoomType> rts=rt_dao.findRoomTypes();     
     pageContext.setAttribute("rts",rts);
  %>
      <div>
           <center>
           <div id="form_div">
             <form action="/myhotel/lsq/SelectRoom" method="post" class="form-inline">
               <div class="form-group">
                     <label >房号</label>
                     <input type="text" class="form-control" id="exampleInputName2"  name="r_num">
               </div>
               <div class="form-group">
                     <label >房间状态</label>
                     <input type="text" class="form-control" id="exampleInputName2"  name="r_state">
               </div>
               <div class="form-group">
                    
                     <select id="xiala" name="rt_id" class=>
                               <option value="-1">所有</option>
                              <c:forEach items="${rts}" var="v" >
                                <option value="${v.id}" >${v.type}&nbsp;价格为${v.price }元每天</option>
                                
                            </c:forEach>
                     </select>
               </div>
                <button type="submit" class="btn btn-default">查询</button>
             </form>    
           </div>
           </center> 
         <div id="mytable_div">
               <center>
                <iframe width="100%" height="100%" src="room_list.jsp" frameborder="0" noresize="noresize"></iframe>
               </center>
           </div>
           
         
      </div>
      
  </body>
</html>
