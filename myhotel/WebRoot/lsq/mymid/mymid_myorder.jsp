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
        <link rel="stylesheet" href="boot/bootstrap-theme.css">
        <link rel="stylesheet" href="boot/bootstrap.min.css">
        <link rel="stylesheet" href="css/my.css">
        
        
  </head>
  
  <body>
       <br>
         
       <%
       Client client=(Client)session.getAttribute("client");
       
        if(client==null)
        {
         response.sendRedirect("http://localhost:8080/myhotel/lsq/error/login.html");
         client=new Client(0,"","","","","",""); 
        }
       
       
       int id =client.getId();
       MyOrderDao dao=new MyOrderDao();
       ArrayList<MyOrder> list=dao.findOrderById(id);
     //  int[] li=new int[list.size()];
       
       for(MyOrder myorder:list)
       {
           myorder.getR_id();
       }
       
       pageContext.setAttribute("list",list );
       
       
         
           
       %>
       <input type="text" disabled="disabled" value="当前用户为:::${client.name}" class="beijing" />
        <table class="table mycolor" id="mytable">
            <tr >
            <td>订单开始时间</td><td>入住时间</td><td>支付状态</td> <td colspan="3">操作</td>  
            </tr> 
            
           <c:forEach items="${list}" var="v">
             <tr  >
               <td><c:out value="${v.start_time}"></c:out></td>
               <td><c:out value="${v.days}"></c:out></td>
               <td><c:out value="${v.state}"></c:out></td>
             
               <td width="50px">
              <a href="http://localhost:8080/myhotel/lsq/mymid/mymid_xiangqing.jsp?or_id=${v.or_id}&cl_id=${v.cl_id}&r_id=${v.r_id}"> <input type="button" class="btn btn-primary btn-sm" id="but" value="查看详情" ></a>
                
               </td>
               
               <td width="50px">
              <a href="http://localhost:8080/myhotel/lsq/mymid/mymid_orderc.jsp?or_id=${v.or_id}"> <input type="button" class="btn btn-info btn-sm" id="but" value="修改订单"></a>
              
              
               </td>
               <td>
                  <a href="http://localhost:8080/myhotel/lsq/OrderDel?or_id=${v.or_id}"> <input type="button" class="btn btn-warning btn-sm" id="but" value="撤销订单"></a>
               </td>
              
             </tr>
           </c:forEach>
            
            
        </table>
        
  
        <script type="text/javascript" src="boot/bootstrap.min.js"></script>
        <script type="text/javascript" src="boot/jquery-3.1.0.min.js"></script>
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
  </body>
</html>
