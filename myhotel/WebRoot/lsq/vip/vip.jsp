<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.lsq.dao.*" %>
<%@page import="com.lsq.mode.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   

  </head>
     <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
     <link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
     <script src="bootstrap/jquery-3.1.0.min.js"></script>
     <script src="bootstrap/bootstrap.min.js"></script>
      <link rel="stylesheet" href="css/vip.css">
  <body>
  
  <%
     
         
   %>
    <div class="ba">
      <center>
      <div class="back">
          
               <div class="form-group">
                   <label id="fontspan">当前用户名</label>
                   <input type="email" class="form-control" id="exampleInputEmail1" placeholder="" disabled="disabled" value="${client.name}"> 
               </div>
               <div class="form-group">
                   <label id="fontspan">当前vip状态</label>
                   <input type="email" class="form-control" id="exampleInputEmail1" placeholder="" disabled="disabled" value="${client.vip}">
               </div>
                <button type="submit" class="btn btn-warning" id="fontbut">申请会员</button>
           
      </div>
      </center>
    </div>  
  </body>
</html>
