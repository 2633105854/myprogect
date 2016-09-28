<%@ page import="com.yzz.employee" %>
<%@ page import="com.yzz.JDBCLog" %>
<!DOCTYPE html>
<html>
<head>
	<title>Detail Admin - User Profile</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- libraries -->
    <link href="css/lib/font-awesome.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <link rel="stylesheet" type="text/css" href="css/elements.css" />
    <link rel="stylesheet" type="text/css" href="css/icons.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/user-profile.css" type="text/css" media="screen" />

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
                  <span>Users</span>
                  <i class="icon-chevron-down"></i>
              </a>
              <ul class="active submenu">
                  <li><a href="user-list.jsp">User list</a></li>
                  <li><a href="new-user.html">New user form</a></li>
                  <li><a href="user-profile.jsp" class="active">User profile</a></li>
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
            <div id="pad-wrapper" class="user-profile">
                <!-- header -->
                <div class="row-fluid header">
                    <div class="span8">
                        <%employee user = new employee(); 
                        JDBCLog jdbcLog = new JDBCLog();
                        
			jdbcLog.getconn();
			employee readprofile = jdbcLog.readprofile(request.getParameter("e_id"));
			user = readprofile;
			System.out.println(readprofile.gete_email());
			jdbcLog.closeMethod();%>
                        <h3 class="name"><%=user.gete_name() %></h3>
                        <span class="area"><%=user.gete_sex() %></span>
                    </div>
                    <a href="../servlet/DeleteServlet?e_id=<%=user.gete_id() %>"  class="btn-flat icon pull-right delete-user" data-toggle="tooltip" title="Delete user" data-placement="top">
                        <i class="icon-trash"></i>
                    </a>
                     <a class="btn-flat icon large pull-right edit" href="EidtPerson.jsp?e_id=<%=request.getParameter("e_id")%>">
                        Edit this person
                    </a>
                </div>

                <div class="row-fluid profile">
                    <!-- bio, new note & orders column -->
                    <div class="span9 bio">
                        <div class="profile-box">
                            <!-- biography -->
                            <div class="span12 section">
                                <h6>Biography</h6>
                                <p>There are many variations of passages of Lorem Ipsum available but the majority have humour suffered alteration in believable some formhumour , by injected humour, or randomised words which don't look even slightly believable. </p>
                            </div>

                            <h6>Recent orders</h6>
                            <br />
                            <!-- recent orders table -->
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th class="span2">
                                            工号
                                        </th>
                                         <td>
                                            <%=user.gete_id() %>
                                        </td>
                                        </tr>
                                    <tr>
                                        <th class="span3">
                                            <span class="line"></span>
                                            手机号
                                        </th>
                                         <td>
                                            <%=user.gete_phone() %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="span3">
                                            <span class="line"></span>
                                           邮箱
                                        </th>
                                      	 <td>
                                            <%=user.gete_email() %>
                                        </td>
                                    </tr>
                                </thead>
                               
                            </table>

                            <!-- new comment form -->
                            <div class="span12 section comment">
                                
                                <div class="span12 submit-box pull-right">
                                    <input type="submit" class="btn-glow primary" value="Add Note" />
                                    <span>OR</span>
                                    <input type="reset" value="Cancel" class="reset" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- side address column -->
                    <div class="span3 address pull-right">
                        <h6>Address</h6>
                        
                        <ul>
                            <li>2301 East Lamar Blvd. Suite 140. </li>
                            <li>City, Arlington. United States,</li>
                            <li>Zip Code, TX 76006.</li>
                            <li class="ico-li">
                                <i class="ico-phone"></i>
                                <%=user.gete_phone() %>
                            </li>
                             <li class="ico-li">
                                <i class="ico-mail"></i>
                                <a href="#"><%=user.gete_email() %></a>
                            </li>
                        </ul>
                    </div>
                </div>
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