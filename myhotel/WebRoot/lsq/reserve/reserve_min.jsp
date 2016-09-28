<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.lsq.dao.*" %>
<%@page import="com.lsq.mode.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
     <link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
     <link rel="stylesheet" href="css/my.css">
     <link rel="stylesheet" href="zf/css/index.css" />
     <script src="bootstrap/jquery-3.1.0.min.js"></script>
     <script src="bootstrap/bootstrap.min.js"></script>
      
      <script type="text/javascript" src="date/WdatePicker.js"></script>
      
     
     
  </head>
  
  <body background="img/img2.JPEG" >
  <%
    Client myc=(Client)session.getAttribute("client");
    if(myc==null)
    {
       response.sendRedirect("http://localhost:8080/myhotel/lsq/error/login.html");
       myc=new Client(0,"","","","","","");
    }
    else
    {
    //判断为空的时候
    
    //获取到roomid
    int room_id =Integer.parseInt(request.getParameter("room_id"));
    
        //设置myc值
        pageContext.setAttribute("myc",myc);
        
    RoomDao roomdao=new RoomDao();
    Room  room=roomdao.findRoomById(room_id);
         pageContext.setAttribute("rm_room", room);
        //获取到房间类型id
        
     int rt_id=room.getRt_id();
        //获取到房间类型
     RoomTypeDao roomtdao=new RoomTypeDao();  
     RoomType  roomtype=roomtdao.findModelById(rt_id);  
         pageContext.setAttribute("rm_roomtype",roomtype);
       session.setAttribute("res_r_id", room_id);
       
  
    //判断为空的时候
     
    }
    
  
   %>
  
  
        
        <div class=" biaodan" id="myform_div">
            
            
           <font color="#FFF"> <h1 >欢迎订购</h1></font>
            <form action="/myhotel/lsq/Reserve" method="post" class="form-horizontal" role="form">
                 <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label wenben">用户姓名</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control wenben_shuru" id="inputEmail3" placeholder="用户姓名"
                       value="${myc.realname}" disabled="disabled">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label wenben " >订单时间</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control wenben_shuru " id="inputEmail3" 
                       name="time" onfocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label wenben">订单天数</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control wenben_shuru" id="days" placeholder="订单天数"
                       name="days" onblur="zongji()">
                    </div>
                  </div>
                   <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label wenben">房间ID</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control wenben_shuru" id="inputEmail3" placeholder="${room.r_id}"
                       value="${rm_room.r_id}" disabled="disabled" name="r_id">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label wenben">房间类型</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control wenben_shuru" id="inputEmail3" placeholder="房间类型"
                       value="${rm_roomtype.type}" disabled="disabled">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label wenben">房间价格</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control wenben_shuru" id="jiage" placeholder="房间价格"
                       value="${rm_roomtype.price}" disabled="disabled">
                    </div>
                  </div>
                   <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label wenben">房间号</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control wenben_shuru" id="inputEmail3" placeholder="房间号"
                       value="${rm_room.r_num}" disabled="disabled">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label wenben">预计消费</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control wenben_shuru" id="yuji" placeholder="预计消费" disabled="disabled"
                       value=""
                       >
                    </div>
                  </div>
                 
                   <div class="form-group">
                          <div class="col-sm-offset-2 col-sm-10">
                             <button type="submit" class="btn btn-default">快速预定</button>
                          </div>
                   </div>
                   
                
                
              </form>
            
        </div>
        
        <script type="text/javascript" src="js/money.js"></script>
  </body>
</html>
