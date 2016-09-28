<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.lsq.dao.*" %>
<%@page import="com.lsq.mode.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="boot/bootstrap-theme.css">
        <link rel="stylesheet" href="boot/bootstrap.min.css">
        <link rel="stylesheet" href="css/my.css">  
       
        <link rel="stylesheet" href="css/my.css">
   

  </head>
  
  <body>
       <%
         int or_id=Integer.parseInt(request.getParameter("or_id"));
         int cl_id=Integer.parseInt(request.getParameter("cl_id"));
         int r_id=Integer.parseInt(request.getParameter("r_id"));
         MyOrderDao myodao=new MyOrderDao();
         RoomDao roomdao=new RoomDao();
         RoomTypeDao roomtdao=new RoomTypeDao();
         
         Client client=(Client)session.getAttribute("client");
         MyOrder myorder=myodao.findModeByid(or_id);
         pageContext.setAttribute("myorder",myorder);
         
         Room room =roomdao.findRoomById(r_id);
         pageContext.setAttribute("room",room);
          
              int rt_id=room.getRt_id();
         RoomType  roomtype=roomtdao.findModelById(rt_id);
         pageContext.setAttribute("roomtype",roomtype);
         
         double moneys=roomtype.getPrice()*Integer.parseInt(myorder.getDays());
         pageContext.setAttribute("money", moneys);
            
         
         
        
         
         
         
             
         
        // out.print(cl_id+""+r_id);
        %>
        <br/>  <br/>  <br/>  <br/>  <br/>  <br/>
       
       
        <center>
      
            <table class="table mycolor" id="mytable1">
                  <thead>
                  <font color="#FFF"> <h1>详细信息</h1></font>
                  </thead>   
                 <tr>
                    <td><h4><span class="label">当前用户</span><h4/></td> 
                    <td><input type="text" class="form-control" value="${client.name}" disabled="true"></td>  
                    <td><h4><span class="label">当前用户姓名</span><h4/></td>
                    <td><input type="text" class="form-control"  value="${client.realname}" disabled="true"></td>
                 </tr>
                 
                 <tr>
                    <td><h4><span class="label ">房间类型</span><h4/></td> 
                    <td><input type="text" class="form-control" value="${roomtype.type}" disabled="true"></td>  
                    <td><h4><span class="label">订单时间</span><h4/></td>
                    <td><input type="text" class="form-control"  value="${myorder.start_time}" disabled="true"></td>
                 </tr>
                  <tr>
                    <td><h4><span class="label">订单时长</span><h4/></td> 
                    
                    <td>
                        <div class="input-group">
                 
                          <input type="text" class="form-control" value="${myorder.days}" disabled="true">
                          <span class="input-group-addon" id="basic-addon2">天</span>
                        </div>
                          
                     </td>  
                    <td><h4><span class="label ">房号</span><h4/></td>
                    <td><input type="text" class="form-control"  value="${room.r_num}" disabled="true"></td>
                 </tr>
                 
                 <tr>
                    <td><h4><span class="label ">房间价格</span><h4/></td> 
                    <td>
                          <div class="input-group">
                          <input type="text" class="form-control" value="${roomtype.price}" disabled="true">
                          <span class="input-group-addon" id="basic-addon2">元每天</span>
                        </div>
                    </td>  
                    <td><h4><span class="label ">房间状态</span><h4/></td>
                    <td><input type="text" class="form-control"  value="${room.state}" disabled="true"></td>
                 </tr>
                 <tr>
                    <td><h4><span class="label">总消费金额</span><h4/></td> 
                    <td>
                            <div class="input-group">
                          <input type="text" class="form-control" value="${money}" disabled="true">
                           <span class="input-group-addon" id="basic-addon2">元</span>
                           </div>
                          </td>  
                    <td><h4><span class="label">款项状态</span><h4/></td>
                    <td><input type="text" class="form-control"  value="${myorder.state}" disabled="true"></td>
                 </tr>
                 <tr>
                   <td colspan="4">
                   <center>
                  <a href="http://localhost:8080/myhotel/lsq/mymid/mymid_myorder.jsp">  <button type="button" class="btn btn-warning">返回</button></a>
                    </center>
                   </td>
                   
                       
                 </tr>
            </table>
        
        
       </center>
  
         <script type="text/javascript" src="boot/bootstrap.min.js"></script>
        <script type="text/javascript" src="boot/jquery-3.1.0.min.js"></script>
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script type="text/javascript" src="js/myjs.js"></script>
  </body>
</html>
