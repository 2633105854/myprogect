<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.lsq.dao.*" %>
<%@page import="com.lsq.mode.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'mymid_uap.jsp' starting page</title>
    
      <link rel="stylesheet" href="assets/css/reset.css">
       <link rel="stylesheet" href="assets/css/supersized.css">
       <link rel="stylesheet" href="assets/css/style.css">
    
  </head>
  
  <body>
  <%
     ClientDao  dao=new ClientDao();
     Client myc=(Client)request.getSession().getAttribute("client");
     
      if(myc==null)
        {
         response.sendRedirect("http://localhost:8080/myhotel/lsq/error/login.html");
         myc=new Client(0,"","","","","","");
        
        }
        else
        {
     
   
     int id=myc.getId();
     myc=dao.getClientById(id);
     }
   
  %>
         <div class="page-container">
            <h1>个人基本信息</h1>
            <form action="/myhotel/lsq/UnPChange" method="post">
                <label>我的用户名</label> 
                <input type="text" name="username" class="username" id="name" value="<%=myc.getName()%>"
                       onFocus="yz_namej()"  onBlur="yz_names()">
                <br/>
                <label id="named"></label>
                <br/>
                <label>我的密码</label>
                <input type="text" name="password" class="username"  id="pass" value="<%=myc.getPassword()%>"
                      onFocus="yz_passj()" onBlur="yz_passs()">
                       <br/>
                <label id="passd"></label>
                <br/>
                <button type="submit">提交</button>
                <br>
                <a href="http://localhost:8080/myhotel/lsq/mymid/mymid.html"><input type="button" id="fanhui" value="返回"></a>
                <div class="error"><span>+</span></div>
            </form>
            <div class="connect">
                <p>Or connect with:</p>
                <p>
                    <a class="facebook" href=""></a>
                    <a class="twitter" href=""></a>
                </p>
            </div>
          </div>
      
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script type="text/javascript" src="js/yanzheng.js"></script>
       
  </body>
</html>
