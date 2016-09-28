<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.lsq.dao.*" %>
<%@page import="com.lsq.mode.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
       <link rel="stylesheet" href="assets/css/reset.css">
       <link rel="stylesheet" href="assets/css/supersized.css">
       <link rel="stylesheet" href="assets/css/style.css">
       <link rel="stylesheet" href="css/my.css">
        <link rel="stylesheet" href="boot/bootstrap-theme.css">
        <link rel="stylesheet" href="boot/bootstrap.min.css">

  </head>
  
  <body>
  <%
     int id=Integer.parseInt( request.getParameter("or_id"));
     MyOrderDao dao=new MyOrderDao();
     MyOrder myorder=dao.findModeByid(id);
     pageContext.setAttribute("myorder",myorder );
     
     RoomTypeDao roomtypedao=new RoomTypeDao();
     ArrayList<RoomType> li=roomtypedao.findRoomTypes();
     pageContext.setAttribute("roomtype",li );
        
  
   %>
  
   <div class="page-container">
          <font color="#FFF">  <h1>订单详细信息</h1></font>
            <form action="/myhotel/lsq/OrderChange" method="post" >
                <table  id="mytable2">
               
                  
               <tr> 
               <td>  <label>订单id</label> </td>
                </tr>
                <tr>       
               <td>  <input type="text" name="or_id" class="" id="relname" value="${myorder.or_id}"></td>
               </tr>
               
               
                
               <tr> 
               <td>  <label>订单日期</label> </td>
                </tr>
                <tr>       
               <td>  <input type="text" name="time" class="" id="relname" value="${myorder.start_time}"></td>
               </tr>
                
                <tr>
                 <td>  <label>订单时间</label></td>
                 </tr>
                <tr> 
                <td>   <input type="text" name="days" class=""  id="card" value="${myorder.days}">  </td>
                </tr>
                <tr>
                  <td>
                        <label>房间类型</label></td>
                 </tr>
                <tr> 
                <td> 
                       <select id="xiala" name="rt_id">
                            <c:forEach items="${roomtype}" var="v">
                                <option value="${v.id}" selected="selected">${v.type}&nbsp;价格为${v.price }元每天</option>
                                
                            </c:forEach>
                       </select>
                 </td>
                </tr>
                
                
              
                
               
                <tr>
                     <td>  <a href="http://localhost:8080/myhotel/lsq/mymid/mymid.html">
                           <input type="button" value="返回"  id="mybut"></a>
                     </td>
                  </tr>
                <tr>     
                     <td>  <input type="submit" value="提交" id="mybut"/></td>
                </tr>
               
             
                </table>
            </form>
           
          </div>
  
  
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
       <script type="text/javascript" src="boot/jquery-3.1.0.min.js"></script>
         <script type="text/javascript" src="boot/bootstrap.min.js"></script>
      
  </body>
</html>
