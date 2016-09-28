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
       <script type="text/javascript" src="js/money.js"></script>
      
     
     
  </head>
  
  <body background="img/img2.JPEG">
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
        pageContext.setAttribute("myc",myc);
    int rt_id=Integer.parseInt( request.getParameter("id")); 
    RoomTypeDao roomtdao=new RoomTypeDao();
    RoomType  roomtype=roomtdao.findModelById(rt_id);  
         pageContext.setAttribute("roomtype",roomtype);
    RoomDao roomdao=new RoomDao();
    Room  room=roomdao.findRoomByRtId(rt_id);
    //判断为空的时候
        if(room==null)
        {
             int r_id=0;
             room=new Room(0,"",0,"");
             pageContext.setAttribute("room", room);
             
             response.getWriter().print("<script>alert('This type of room is empty.');</script>");
		     response.setHeader("refresh","0;URL=/myhotel/lsq/index.html");
        }
       else{
            int r_id=room.getR_id();
    
            pageContext.setAttribute("room", room);
            //设置房间id
            session.setAttribute("res_r_id", r_id);
        }
        
    }
    
  
   %>
  
  
        <div class="fudong">
           <div class="wrap">
	<!--	/*包裹所有元素的容器*/-->
		 <div class="cube">
			<!--前面图片 -->
			<div class="out_front">
				<img src="zf/img/img1.JPEG"  class="pic"/>
			</div>
			<!--后面图片 -->
			<div class="out_back">
				<img src="zf/img/img2.jpg"  class="pic"/>
			</div>
			<!--左图片 -->
			<div class="out_left">
				<img src="zf/img/img3.jpg"  class="pic"/>
			</div>
			<div class="out_right">
				<img src="zf/img/img4.jpg"  class="pic"/>
			</div>
			<div class="out_top">
				<img src="zf/img/img5.jpg"  class="pic"/>
			</div>
			<div class="out_bottom">
				<img src="zf/img/img6.jpg"  class="pic"/>
			</div>
			<!--小正方体 --> 
			<span class="in_front">
				<img src="zf/img/img7.JPEG" class="in_pic" />
			</span>
			<span class="in_back">
			     <img src="zf/img/img8.jpg" class="in_pic" />
			</span>
			<span class="in_left">
				<img src="zf/img/img9.JPEG" class="in_pic" />
			</span>
			<span class="in_right">
				<img src="zf/img/img10.jpg" class="in_pic" />
			</span>
			<span class="in_top">
				<img src="zf/img/img11.jpg" class="in_pic" />
			</span>
			<span class="in_bottom">
				<img src="zf/img/img12.jpg" class="in_pic" />
			</span>
		</div>
		</div>
        </div>
        <div class="fudong biaodan">
            
            
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
                       value="${room.r_id}" disabled="disabled" name="r_id">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label wenben">房间类型</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control wenben_shuru" id="inputEmail3" placeholder="房间类型"
                       value="${roomtype.type}" disabled="disabled">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label wenben">房间价格</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control wenben_shuru" id="jiage" placeholder="房间价格"
                       value="${roomtype.price}" disabled="disabled">
                    </div>
                  </div>
                   <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label wenben">房间号</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control wenben_shuru" id="inputEmail3" placeholder="房间号"
                       value="${room.r_num}" disabled="disabled">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label wenben">预计消费</label>
                    <div class="col-sm-10">
                       <input type="text" class="form-control wenben_shuru" id="yuji" placeholder="预计消费" disabled="disabled">
                    </div>
                  </div>
                 
                   <div class="form-group">
                          <div class="col-sm-offset-2 col-sm-10">
                             <button type="submit" class="btn btn-default">快速预定</button>
                          </div>
                   </div>
                   
                
                
              </form>
            
        </div>
  </body>
</html>
