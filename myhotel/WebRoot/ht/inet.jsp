<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.lsq.dao.*" %>
<%@page import="com.lsq.mode.*" %>
<%@ page import="org.jfree.chart.*" %>
<%@ page import="org.jfree.data.general.*" %>
<%@ page import="org.jfree.chart.servlet.ServletUtilities" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>

<html>
  <head>
       <script type="text/javascript" src="js/ichart.1.2.min.js"></script>
       <script src="js/Chart.js"></script>
       
      <link rel="stylesheet" href="css/myht.css">
      <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
      
      <link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
      <script src="bootstrap/jquery-3.1.0.min.js"></script>
      <script src="bootstrap/bootstrap.min.js"></script>
      <link rel="stylesheet" href="css/shu.css">
      <script type="text/javascript" src="js/jstu.js"></script>
      
     
      
     
      

  </head>
  <body >
    <%
        //实例化核心类对象
        DefaultPieDataset dataset=new DefaultPieDataset();
        //设置图表值，可为多个
        RoomTypeDao dao=new RoomTypeDao();
        ArrayList<RoomType> li=dao.findRoomTypes();
        for(RoomType rt :li)
        {
        dataset.setValue("The room id"+rt.getId()+"",rt.getNum() );
        }
       
     //   RoomType
        
     
        //根据JFreeChart提供的工厂类org.jfree.chart.ChartFactory创建饼状图
        JFreeChart chart=ChartFactory.createPieChart3D("RoomType",dataset,true,false,false);
        String filename=ServletUtilities.saveChartAsPNG(chart,1000,600,session);
        String graphURL=request.getContextPath()+"/DisplayChart?filename="+filename;
     %>
   <img src="<%=graphURL %>" >
    
  </body>