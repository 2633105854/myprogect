<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.lsq.dao.*" %>
<%@page import="com.lsq.mode.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
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
         myc=new Client(0,"","","","","","");
         response.sendRedirect("http://localhost:8080/myhotel/lsq/error/login.html");
        
        
        }
        else
        {
        int id=myc.getId();
        myc=dao.getClientById(id);
        
        }
   
      %>
      
       <div class="page-container">
            <h1>个人详细信息</h1>
            <form action="/myhotel/lsq/RelChange" method="post">
                
                <label>我的真实姓名</label> 
                <input type="text" name="relname" class="username" id="relname" value="<%=myc.getRealname()%>"
                       onFocus="rel_name_j()"  onBlur="rel_name_s()">
                <br/>
                <label id="relnamed"></label>
                <br/>
                <label>我的身份证号</label>
                <input type="text" name="card" class="username"  id="card" value="<%=myc.getCard()%>"
                      onFocus="card_j()" onBlur="card_s()">
                       <br/>
                <label id="cardd"></label>
                
                 <br/>
                <label>我的电话</label>
                <input type="text" name="phone" class="username"  id="phone" value="<%=myc.getPhone()%>"
                      onFocus="phone_j()" onBlur="phone_s()">
                       <br/>
                <label id="phoned"></label>
                <br/>
                 <br/>
                <label>我是否是vip</label>
                <input type="text" name="vip" class="username"  id="pass" value="<%=myc.getVip()%>"
                     disabled="true">
                       <br/>
                <label id="passd"></label>
                
                <a href="http://localhost:8080/myhotel/lsq/mymid/mymid.html"><input type="button" value="返回"></a>
                <button type="submit">提交</button>
               
                <div class="error"><span>+</span></div>
            </form>
           
          </div>
  
  
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
         <script type="text/javascript" src="js/yanzheng.js"></script>
  </body>
</html>
