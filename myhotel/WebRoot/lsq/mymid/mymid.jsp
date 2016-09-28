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
         int id=0;
        ClientDao  dao=new ClientDao();
        Client myc=(Client)request.getSession().getAttribute("client");
        if(myc==null)
        {
         response.sendRedirect("http://localhost:8080/myhotel/lsq/error/login.html");
         myc=new Client(0,"","","","","","");
        
        }
        else
        {
        id=myc.getId();
        myc=dao.getClientById(id);
        }
   
      %>
         <div class="page-container">
            <h1>个人信息</h1>
               <center>
                <table>
                <tr>
                    <td>
                       <label id="named">当前个人id:</label>
                    </td>
                    <td>
                       <input type="text" name="username" class="username" id="name" placeholder= "<%=id%>"
                        >
                    </td>
                    <td>     
                       <label id="named">个人现用用户名:</label>
                     </td>
                     <td>
                       <input type="text" name="username" class="username" id="name" placeholder= "<%=myc.getName()%>"
                       >
                  </td>     
                </tr>
                <tr>
                    <td>     
                      <label id="named">个人真实姓名:</label>
                    </td>
                    <td>
                      <input type="text" name="username" class="username" id="name" placeholder= "<%=myc.getRealname()%>"
                      >
                   </td>
                   <td>    
                      <label id="named">个人真实身份证:</label>
                    </td>
                     <td>
                      <input type="text" name="username" class="username" id="name" placeholder= "<%=myc.getCard()%>"
                      >
                      </td>
                </tr>
                  <tr>
                    <td>     
                      <label id="named">个人电话:</label>
                    </td>
                    <td>
                      <input type="text" name="username" class="username" id="name" placeholder= "<%=myc.getPhone()%>"
                      >
                   </td>
                   <td>    
                      <label id="named">VIP会员：</label>
                    </td>
                     <td>
                      <input type="text" name="username" class="username" id="name" placeholder= "<%=myc.getVip()%>"
                      >
                      </td>
                </tr>
                </table>
                <button type="button" id="fanhui" onclick="danji()">返回</button>
                
                
                </center>
                <div class="error"><span>+</span></div>
         
            
        </div>
   
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script type="text/javascript" src="js/mybutton.js"></script>
   
  </body>
</html>
