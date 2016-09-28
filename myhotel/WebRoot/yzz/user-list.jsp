<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="com.yzz.employee" %>
<%@ page import="com.yzz.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
	<title>员工信息表</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <link rel="stylesheet" type="text/css" href="css/elements.css" />
    <link rel="stylesheet" type="text/css" href="css/icons.css" />

    <!-- libraries -->
    <link href="css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/user-list.css" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

    <!-- navbar -->
    <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <button type="button" class="btn btn-navbar visible-phone" id="menu-toggler">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            

                        
      </div>
    </div>
    <!-- end navbar -->

    <!-- sidebar -->
    <div id="sidebar-nav">
        <ul id="dashboard-menu">
          <li class="active">
              <div class="pointer">
                  <div class="arrow"></div>
                  <div class="arrow_border"></div>
              </div>
              <a class="dropdown-toggle" href="#">
                  <i class="icon-group"></i>
                  <span>员工</span>
                  <i class="icon-chevron-down"></i>
              </a>
              <ul class="active submenu">
                  <li><a href="user-list.jsp" class="active">员工表</a></li>
                  <li><a href="new-user.html">新员工</a></li>
                  <li><a href="user-profile.jsp">员工信息</a></li>
              </ul>
            </li>
            <li>
              <ul class="submenu">
                  <li><a href="form-showcase.html">Form showcase</a></li>
                    <li><a href="form-wizard.html">Form wizard</a></li>
                </ul>
            </li>
            <li>
                <a href="personal-info.html">
                    <i class="icon-cog"></i>
                    <span>My Info</span>
                </a>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-share-alt"></i>
                    <span>Extras</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="code-editor.html">Code editor</a></li>
                    <li><a href="grids.html">Grids</a></li>
                    <li><a href="signin.html">Sign in</a></li>
                    <li><a href="signup.html">Sign up</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- end sidebar -->
    

	<!-- main container -->
    <div class="content">
        
        <!-- settings changer -->
        <div class="skins-nav">
            <a href="#" class="skin first_nav selected">
                <span class="icon"></span><span class="text">Default</span>
            </a>
            <a href="#" class="skin second_nav" data-file="css/skins/dark.css">
                <span class="icon"></span><span class="text">Dark skin</span>
            </a>
        </div>
        
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3>员工</h3>
                    <div class="span10 pull-right">
                        <input type="text" class="span5 search" placeholder="è¾å¥å§åæ¥æ¾..." />
                        
                        <!-- custom popup filter -->
                        <!-- styles are located in css/elements.css -->
                        <!-- script that enables this dropdown is located in js/theme.js -->
                        <div class="ui-dropdown">
                            <div class="head" data-toggle="tooltip" title="Click me!">
                                Filter users
                                <i class="arrow-down"></i>
                            </div>  
                            <div class="dialog">
                                <div class="pointer">
                                    <div class="arrow"></div>
                                    <div class="arrow_border"></div>
                                </div>
                                <div class="body">
                                    <p class="title">
                                        Show users where:
                                    </p>
                                    <div class="form">
                                          <select>
                                            <option />姓名/性别
                                            <option />邮箱
                                            <option />Number of orders
                                            <option />工号
                                            <option />Last seen
                                        </select>
                                        <select>
                                            <option />is equal to
                                            <option />is not equal to
                                            <option />is greater than
                                            <option />starts with
                                            <option />contains
                                        </select>
                                        <input type="text" />
                                        <a class="btn-flat small">Add filter</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <a href="new-user.html" class="btn-flat success pull-right">
                            <span>&#43;</span>
                            新员工
                        </a>
                    </div>
                </div>

                <!-- Users table -->
                <div class="row-fluid table">
                
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="span4 sortable">
                                    姓名/性别
                                </th>
                                <th class="span3 sortable">
                                    <span class="line"></span>工号
                                </th>
                                <th class="span2 sortable">
                                    <span class="line"></span>Total spent
                                </th>
                                <th class="span3 sortable align-right">
                                    <span class="line"></span>邮箱
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                     
                        <!-- row -->
                      	<%
                      		UserDAO orDao = new UserDAO();
                      	                      					if(orDao.getUser()!=null){
                      	                      						ArrayList<employee> list = orDao.getUser();
                      	                      						for(int i = 0;i<list.size();i++){
                      	                      							employee user=list.get(i);
                      	%>
						<tr class="first">
							<td> <a href="../servlet/ProfileServlet?e_id=<%=user.gete_id() %>" class="name"><%=user.gete_name() %></a>
                                <span class="subtext"><%=user.gete_sex() %></span></td>
							<td><%=user.gete_id() %></td>
							<td><%=user.gete_phone() %></td>
							<td class="align-right"><%=user.gete_email() %></td>
							
						</tr>
						<%
					}
				}
			%>
                        </tbody>
                    </table>
                    
                </div>
                <div class="pagination pull-right">
                    <ul>
                        <li><a href="#">&#8249;</a></li>
                        <li><a class="active" href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&#8250;</a></li>
                    </ul>
                </div>
                <!-- end users table -->
            </div>
        </div>
    </div>
    <!-- end main container -->


	<!-- scripts -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>

</body>
</html>