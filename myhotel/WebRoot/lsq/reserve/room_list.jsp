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
  
  <body >
    <%
      
     %>
       <div id="myb" >
          <table class="table" >
               <tr id="mytd">
                    <td>房间ID</td><td>房间号</td><td>房间状态</td><td>房间类型</td><td>操作</td>
                         
               </tr>
              
               <c:forEach items="${select_romms}" var="v" varStatus="lo">
                 <tr id="mytr">
                     <td>${v.r_id}</td> <td>${v.r_num}</td><td>${v.state}</td>
                     <td>${select_romms_types[lo.count-1]}</td>
                     <td>
                          <a href="//localhost:8080/myhotel/lsq/reserve/reserve_min.jsp?room_id=${v.r_id}">  
                          <button type="button" class="btn btn-info">快速预定</button>
                          </a> 
                     </td>        
                 </tr>               
               </c:forEach>
                 
              
              
          </table>    
       </div>
       <div>
       
       </div>
       
  </body>
</html>
