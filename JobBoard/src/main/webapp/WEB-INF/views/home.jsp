<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <base href="/JobBoard/">
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
     <link href="<c:url value='/static/lib/bootstrap/css/bootstrap.css' />" rel="stylesheet"></link>
     <link href="<c:url value='/static/css/index.css' />" rel="stylesheet"></link>
     <title>Login</title>
</head>
<body>

	<div class="top-header">
		<div class="row row-clearfix">
			<div class="col-md-3 col-clearfix">
				<div class="container-fluid">
				    <div class="navbar-header">
				    	<div class="brand-name">ADMINBSB - MATERIAL</div>
				    </div>					
				</div>
			</div>
			<div class="col-md-9 col-clearfix"></div>
		</div>
	</div>
	
	<div class="row row-clearfix">
		<div class="col-md-2 col-clearfix">
			<div class="left-sidebar">
				<div class="user-info-panel">
					<div class="user-name">John Doe</div>
					<div class="email">ashish.chaudhary008@gmail.com</div>
					<h3>
						<button class="btn btn-sm btn-success">Messages</button>
						<button class="btn btn-sm btn-success">Status</button>
					</h3>										
				</div>
				
				<div class="menu-header">MAIN NAVIGATION</div>
				
				<div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close">
                            </span>Jobs</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td><span class="glyphicon glyphicon-pencil text-primary"></span><a href="http://www.jquery2dotnet.com">Post</a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-flash text-success"></span><a href="http://www.jquery2dotnet.com">Manage</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" target="_self" href="#collapseTwo"><span class="glyphicon glyphicon-th">
                            </span>Profiles</a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">Manage</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">Shipments</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">Tex</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-user">
                            </span>Account</a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">Change Password</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">Notifications</a> <span class="label label-info">5</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">Import/Export</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-trash text-danger"></span><a href="http://www.jquery2dotnet.com" class="text-danger">
                                            Delete Account</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-file">
                            </span>Reports</a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-usd"></span><a href="http://www.jquery2dotnet.com">Sales</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-user"></span><a href="http://www.jquery2dotnet.com">Customers</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-tasks"></span><a href="http://www.jquery2dotnet.com">Products</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-shopping-cart"></span><a href="http://www.jquery2dotnet.com">Shopping Cart</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
				
				<div class="legal">
					<div class="copyright">
                    	© 2016 <a href="javascript:void(0);">AdminBSB - Material</a>
                    </div>
				</div>
			</div>
			<div style="clear: both">&nbsp;</div>
		</div>
		
		<div class="col-md-10 col-clearfix">
			<div class="right-sidebar">
				<div class="container-fluid">
					<div class="block-header">
						<h2>DASHBOARD</h2>
					</div>
					
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    		<div class="info-box bg-pink hover-expand-effect">
                        		<div class="icon"><i class="glyphicon glyphicon-th-list"></i></div>
                        		<div class="content">
                            		<div class="text">TOTAL JOBS</div>
                            		<div class="number count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">1,000</div>
                        		</div>
                    		</div>
                		</div>
                		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    		<div class="info-box bg-cyan hover-expand-effect">
                        		<div class="icon"><i class="glyphicon glyphicon-th-list"></i></div>
                        		<div class="content">
                            		<div class="text">JOBS VIEWED</div>
                            		<div class="number count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">1,22,00</div>
                        		</div>
                    		</div>
                		</div>
                		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    		<div class="info-box bg-light-green hover-expand-effect">
                        		<div class="icon"><i class="glyphicon glyphicon-th-list"></i></div>
                        		<div class="content">
                            		<div class="text">JOBS APPLIED</div>
                            		<div class="number count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">2,30,222</div>
                        		</div>
                    		</div>
                		</div>
                		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    		<div class="info-box bg-orange hover-expand-effect">
                        		<div class="icon"><i class="glyphicon glyphicon-th-list"></i></div>
                        		<div class="content">
                            		<div class="text">PROFILE DOWNLOAD</div>
                            		<div class="number count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20">125</div>
                        		</div>
                    		</div>
                		</div>
					</div>
					
					<div class="row">
						<div class="col-xs-10 col-sm-10 col-md-6 col-lg-6">
                    <div class="card">
                        <div class="header">
                            <h2>LATEST JOBS</h2>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-hover dashboard-task-infos">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Title</th>                                            
                                            <th>Viewd</th>
                                            <th>Applied</th>
                                            <th>Posted</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td><a href="#">Java Developer with 1 - 3 years of experience</a></td>
                                            <td><span class="label label-success">2,000</span></td>
                                            <td><span class="label label-info">30</span></td>
                                            <td><span class="label label-primary">3/01/2017</span></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td><a href="#">Spring Hibernate Developer</a></td>
                                            <td><span class="label label-success">1,500</span></td>
                                            <td><span class="label label-info">20</span></td>
                                            <td><span class="label label-primary">3/01/2017</span></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td><a href="#">HTML/CSS with jquery developer</a></td>
                                            <td><span class="label label-success">100</span></td>
                                            <td><span class="label label-info">20</span></td>
                                            <td><span class="label label-primary">3/01/2017</span></td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td><a href="#">Full Stack Developer with 1 - 3 years of experience</a></td>
                                            <td><span class="label label-success">2,000</span></td>
                                            <td><span class="label label-info">20</span></td>
                                            <td><span class="label label-primary">3/01/2017</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-xs-10 col-sm-10 col-md-6 col-lg-6">
                    <div class="card">
                        <div class="header">
                            <h2>SELECTED EMPLOYEES</h2>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-hover dashboard-task-infos">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Exp</th>
                                            <th>Profile</th>
                                            <th>Last Updated</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td><a href="#">Ashish Chaudhary</a></td>
                                            <td>1.9 Years</td>
                                            <td><a href="#">View</a></td>
                                            <td><span class="label label-success">Today</span></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td><a href="#">Anshu Sharma</a></td>
                                            <td>4 Years</td>
                                            <td><a href="#">View</a></td>
                                            <td><span class="label label-success">Yesterday</span></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td><a href="#">Ashish Chaudhary</a></td>
                                            <td>1.9 Years</td>
                                            <td><a href="#">View</a></td>
                                            <td><span class="label label-success">20 Jan</span></td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td><a href="#">Ashish Chaudhary</a></td>
                                            <td>3.9 Years</td>
                                            <td><a href="#">View</a></td>
                                            <td><span class="label label-success">Today</span></td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td><a href="#">Ashish Chaudhary</a></td>
                                            <td>1.9 Years</td>
                                            <td><a href="#">View</a></td>
                                            <td><span class="label label-success">Today</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                
					</div>			
				</div>
			</div>
		</div>
	</div>
	
	

    
	<script data-main="<c:url value='/static/app/main' />"
		src="<c:url value='/static/lib/requirejs/require.js' />"></script>
		
	 
</body>
</html>