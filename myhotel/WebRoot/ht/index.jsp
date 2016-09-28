<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
      <link rel="stylesheet" href="css/myht.css">
      <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
      
      <link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
      <script src="bootstrap/jquery-3.1.0.min.js"></script>
      <script src="bootstrap/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/shu.css">
      <script type="text/javascript" src="js/myjs.js"></script>

<style type="text/css">

body {
	background-image: url(images/body.jpg);
}

</style>

  </head>
  
  
  <body>
      
     <div class="top"></div>
     <div>
     
         <div class="float bottom1">
                   <div class="leftsidebar_box ">
		              <div class="line"></div>
		              <dl class="system_log">
			            <dt onClick="changeImage()">房间类型管理<img src="images/left/select_xl01.png"></dt>
			            <dd><a href="roomtype_select.jsp" target="newwin" class="first_dd">房间类型修改与查看</a></dd>
			        
			           
		              </dl>
		              
		              <div class="line"></div>
		              <dl class="system_log">
			            <dt onClick="changeImage()">房间管理<img src="images/left/select_xl01.png"></dt>
			            <dd><a href="room_solect.jsp" class="first_dd"  target="newwin" >房间管理</a></dd>
			            <dd><a href="room_add.jsp"   target="newwin" >添加房间</a></dd>
		              </dl>
		              <div class="line"></div>
		              <dl class="system_log">
			            <dt onClick="changeImage()">酒店房间信息图<img src="images/left/select_xl01.png"></dt>
			            <dd><a href="inet.jsp" class="first_dd"  target="newwin" >查看房间类型</a></dd>
			          
		              </dl>
		              
	               </div>
	             
                   
          </div>
         <div class="float bottom2">
            <iframe name="newwin" class="iframe" >
            
                
            </iframe>
             
         </div>
     </div>
 
  </body>
</html>
