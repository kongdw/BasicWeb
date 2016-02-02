<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<k:contentHeader title="###管理系统" index="false"/>
    <ul id="tabs-menu" class="dropdown-menu">
        <li><a class="close-current" href="#">关闭</a></li>
        <li><a class="close-others" href="#">关闭其他</a></li>
        <li><a class="close-all" href="#">关闭所有</a></li>
        <li class="divider"></li>
        <li><a class="close-left-all" href="#">关闭当前左边的所有</a></li>
        <li><a class="close-right-all" href="#">关闭当前右边的所有</a></li>
    </ul>
<!-- Header -->
<header class="header navbar navbar-fixed-top" role="banner">
    <!-- Top Navigation Bar -->
    <div class="container">

        <!-- Only visible on smartphones, menu toggle -->
        <ul class="nav navbar-nav">
            <li class="nav-toggle"><a href="javascript:void(0);" title=""><i class="icon-reorder"></i></a></li>
        </ul>

        <!-- Logo -->
        <a class="navbar-brand" href="index.html">
            <img src="${ctx}/static/images/logo.png" alt="logo" />
            <strong>ME</strong>LON
        </a>
        <!-- /logo -->

        <!-- Sidebar Toggler -->
        <a href="#" class="toggle-sidebar bs-tooltip" data-placement="bottom" data-original-title="显示隐藏菜单">
            <i class="icon-reorder"></i>
        </a>
        <!-- /Sidebar Toggler -->

        <!-- Top Left Menu -->
        <ul class="nav navbar-nav navbar-left hidden-xs hidden-sm">
            <li>
                <a href="#">
                    Dashboard
                </a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    Dropdown
                    <i class="icon-caret-down small"></i>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="icon-user"></i> Example #1</a></li>
                    <li><a href="#"><i class="icon-calendar"></i> Example #2</a></li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="icon-tasks"></i> Example #3</a></li>
                </ul>
            </li>
        </ul>
        <!-- /Top Left Menu -->

        <!-- Top Right Menu -->
        <ul class="nav navbar-nav navbar-right">
            <!-- Notifications -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-warning-sign"></i>
                    <span class="badge">5</span>
                </a>
                <ul class="dropdown-menu extended notification">
                    <li class="title">
                        <p>You have 5 new notifications</p>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <span class="label label-success"><i class="icon-plus"></i></span>
                            <span class="message">New user registration.</span>
                            <span class="time">1 mins</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <span class="label label-danger"><i class="icon-warning-sign"></i></span>
                            <span class="message">High CPU load on cluster #2.</span>
                            <span class="time">5 mins</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <span class="label label-success"><i class="icon-plus"></i></span>
                            <span class="message">New user registration.</span>
                            <span class="time">10 mins</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <span class="label label-info"><i class="icon-bullhorn"></i></span>
                            <span class="message">New items are in queue.</span>
                            <span class="time">25 mins</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <span class="label label-warning"><i class="icon-bolt"></i></span>
                            <span class="message">Disk space to 85% full.</span>
                            <span class="time">55 mins</span>
                        </a>
                    </li>
                    <li class="footer">
                        <a href="javascript:void(0);">View all notifications</a>
                    </li>
                </ul>
            </li>

            <!-- Tasks -->
            <li class="dropdown hidden-xs hidden-sm">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-tasks"></i>
                    <span class="badge">7</span>
                </a>
                <ul class="dropdown-menu extended notification">
                    <li class="title">
                        <p>You have 7 pending tasks</p>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
								<span class="task">
									<span class="desc">Preparing new release</span>
									<span class="percent">30%</span>
								</span>
                            <div class="progress progress-small">
                                <div style="width: 30%;" class="progress-bar progress-bar-info"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
								<span class="task">
									<span class="desc">Change management</span>
									<span class="percent">80%</span>
								</span>
                            <div class="progress progress-small progress-striped active">
                                <div style="width: 80%;" class="progress-bar progress-bar-danger"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
								<span class="task">
									<span class="desc">Mobile development</span>
									<span class="percent">60%</span>
								</span>
                            <div class="progress progress-small">
                                <div style="width: 60%;" class="progress-bar progress-bar-success"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
								<span class="task">
									<span class="desc">Database migration</span>
									<span class="percent">20%</span>
								</span>
                            <div class="progress progress-small">
                                <div style="width: 20%;" class="progress-bar progress-bar-warning"></div>
                            </div>
                        </a>
                    </li>
                    <li class="footer">
                        <a href="javascript:void(0);">View all tasks</a>
                    </li>
                </ul>
            </li>

            <!-- Messages -->
            <li class="dropdown hidden-xs hidden-sm">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-envelope"></i>
                    <span class="badge">1</span>
                </a>
                <ul class="dropdown-menu extended notification">
                    <li class="title">
                        <p>You have 3 new messages</p>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <span class="photo"><img src="${ctx}/static/images/demo/avatar-1.jpg" alt="" /></span>
								<span class="subject">
									<span class="from">Bob Carter</span>
									<span class="time">Just Now</span>
								</span>
								<span class="text">
									Consetetur sadipscing elitr...
								</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <span class="photo"><img src="${ctx}/static/images/demo/avatar-2.jpg" alt="" /></span>
								<span class="subject">
									<span class="from">Jane Doe</span>
									<span class="time">45 mins</span>
								</span>
								<span class="text">
									Sed diam nonumy...
								</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <span class="photo"><img src="${ctx}/static/images/demo/avatar-3.jpg" alt="" /></span>
								<span class="subject">
									<span class="from">Patrick Nilson</span>
									<span class="time">6 hours</span>
								</span>
								<span class="text">
									No sea takimata sanctus...
								</span>
                        </a>
                    </li>
                    <li class="footer">
                        <a href="javascript:void(0);">View all messages</a>
                    </li>
                </ul>
            </li>

            <!-- .row .row-bg Toggler -->
            <li>
                <a href="#" class="dropdown-toggle row-bg-toggle">
                    <i class="icon-resize-vertical"></i>
                </a>
            </li>

            <!-- Project Switcher Button -->
            <li class="dropdown">
                <a href="#" class="project-switcher-btn dropdown-toggle">
                    <i class="icon-folder-open"></i>
                    <span>Projects</span>
                </a>
            </li>

            <!-- User Login Dropdown -->
            <li class="dropdown user">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <!--<img alt="" src="assets/img/avatar1_small.jpg" />-->
                    <i class="icon-male"></i>
                    <span class="username">John Doe</span>
                    <i class="icon-caret-down small"></i>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="pages_user_profile.html"><i class="icon-user"></i> My Profile</a></li>
                    <li><a href="pages_calendar.html"><i class="icon-calendar"></i> My Calendar</a></li>
                    <li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>
                    <li class="divider"></li>
                    <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
                </ul>
            </li>
            <!-- /user login dropdown -->
        </ul>
        <!-- /Top Right Menu -->
    </div>
    <!-- /top navigation bar -->
</header> <!-- /.header -->
<div id="container">
    <div id="sidebar" class="sidebar-fixed">
        <div id="sidebar-content">

            <!-- Search Input -->
            <form class="sidebar-search">
                <div class="input-box">
                    <button type="submit" class="submit">
                        <i class="icon-search"></i>
                    </button>
						<span>
							<input type="text" placeholder="Search...">
						</span>
                </div>
            </form>

            <!-- Search Results -->
            <div class="sidebar-search-results">

                <i class="icon-remove close"></i>
                <!-- Documents -->
                <div class="title">
                    Documents
                </div>
                <ul class="notifications">
                    <li>
                        <a href="javascript:void(0);">
                            <div class="col-left">
                                <span class="label label-info"><i class="icon-file-text"></i></span>
                            </div>
                            <div class="col-right with-margin">
                                <span class="message"><strong>John Doe</strong> received $1.527,32</span>
                                <span class="time">finances.xls</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <div class="col-left">
                                <span class="label label-success"><i class="icon-file-text"></i></span>
                            </div>
                            <div class="col-right with-margin">
                                <span class="message">My name is <strong>John Doe</strong> ...</span>
                                <span class="time">briefing.docx</span>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /Documents -->
                <!-- Persons -->
                <div class="title">
                    Persons
                </div>
                <ul class="notifications">
                    <li>
                        <a href="javascript:void(0);">
                            <div class="col-left">
                                <span class="label label-danger"><i class="icon-female"></i></span>
                            </div>
                            <div class="col-right with-margin">
                                <span class="message">Jane <strong>Doe</strong></span>
                                <span class="time">21 years old</span>
                            </div>
                        </a>
                    </li>
                </ul>
            </div> <!-- /.sidebar-search-results -->

            <!--=== Navigation ===-->
            <%@include file="menu.jsp"%>
            <!-- /Navigation -->
            <div class="sidebar-title">
                <span>Notifications</span>
            </div>
            <ul class="notifications demo-slide-in"> <!-- .demo-slide-in is just for demonstration purposes. You can remove this. -->
                <li style="display: none;"> <!-- style-attr is here only for fading in this notification after a specific time. Remove this. -->
                    <div class="col-left">
                        <span class="label label-danger"><i class="icon-warning-sign"></i></span>
                    </div>
                    <div class="col-right with-margin">
                        <span class="message">Server <strong>#512</strong> crashed.</span>
                        <span class="time">few seconds ago</span>
                    </div>
                </li>
                <li style="display: none;"> <!-- style-attr is here only for fading in this notification after a specific time. Remove this. -->
                    <div class="col-left">
                        <span class="label label-info"><i class="icon-envelope"></i></span>
                    </div>
                    <div class="col-right with-margin">
                        <span class="message"><strong>John</strong> sent you a message</span>
                        <span class="time">few second ago</span>
                    </div>
                </li>
                <li>
                    <div class="col-left">
                        <span class="label label-success"><i class="icon-plus"></i></span>
                    </div>
                    <div class="col-right with-margin">
                        <span class="message"><strong>Emma</strong>'s account was created</span>
                        <span class="time">4 hours ago</span>
                    </div>
                </li>
            </ul>

            <div class="sidebar-widget align-center">
                <div class="btn-group" data-toggle="buttons" id="theme-switcher">
                    <label class="btn active">
                        <input type="radio" name="theme-switcher" data-theme="bright"><i class="icon-sun"></i> Bright
                    </label>
                    <label class="btn">
                        <input type="radio" name="theme-switcher" data-theme="dark"><i class="icon-moon"></i> Dark
                    </label>
                </div>
            </div>

        </div>
        <div id="divider" class="resizeable"></div>
    </div>
    <!-- /Sidebar -->

    <div id="content">
        <div class="container">
            <!-- Breadcrumbs line -->
            <div class="crumbs">
                <ul id="breadcrumbs" class="breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="index.html">Dashboard</a>
                    </li>
                    <li class="current">
                        <a href="pages_calendar.html" title="">Calendar</a>
                    </li>
                </ul>

                <ul class="crumb-buttons">
                    <li><a href="charts.html" title=""><i class="icon-signal"></i><span>Statistics</span></a></li>
                    <li class="dropdown"><a href="#" title="" data-toggle="dropdown"><i class="icon-tasks"></i><span>Users <strong>(+3)</strong></span><i class="icon-angle-down left-padding"></i></a>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="form_components.html" title=""><i class="icon-plus"></i>Add new User</a></li>
                            <li><a href="tables_dynamic.html" title=""><i class="icon-reorder"></i>Overview</a></li>
                        </ul>
                    </li>
                    <li class="range"><a href="#">
                        <i class="icon-calendar"></i>
                        <span></span>
                        <i class="icon-angle-down"></i>
                    </a></li>
                </ul>
            </div>
            <!-- /Breadcrumbs line -->

            <!--=== Page Header ===-->
            <div class="page-header">
                <div class="page-title">
                    <h3>Dashboard</h3>
                    <span>Good morning, John!</span>
                </div>

                <!-- Page Stats -->
                <ul class="page-stats">
                    <li>
                        <div class="summary">
                            <span>New orders</span>
                            <h3>17,561</h3>
                        </div>
                        <div id="sparkline-bar" class="graph sparkline hidden-xs">20,15,8,50,20,40,20,30,20,15,30,20,25,20</div>
                        <!-- Use instead of sparkline e.g. this:
                        <div class="graph circular-chart" data-percent="73">73%</div>
                        -->
                    </li>
                    <li>
                        <div class="summary">
                            <span>My balance</span>
                            <h3>$21,561.21</h3>
                        </div>
                        <div id="sparkline-bar2" class="graph sparkline hidden-xs">20,15,8,50,20,40,20,30,20,15,30,20,25,20</div>
                    </li>
                </ul>
                <!-- /Page Stats -->
            </div>
            <!-- /Page Header -->

            <!--=== Page Content ===-->
            <!--=== Statboxes ===-->
            <div class="row row-bg"> <!-- .row-bg -->
                <div class="col-sm-6 col-md-3">
                    <div class="statbox widget box box-shadow">
                        <div class="widget-content">
                            <div class="visual cyan">
                                <div class="statbox-sparkline">30,20,15,30,22,25,26,30,27</div>
                            </div>
                            <div class="title">Clients</div>
                            <div class="value">4 501</div>
                            <a class="more" href="javascript:void(0);">View More <i class="pull-right icon-angle-right"></i></a>
                        </div>
                    </div> <!-- /.smallstat -->
                </div> <!-- /.col-md-3 -->

                <div class="col-sm-6 col-md-3">
                    <div class="statbox widget box box-shadow">
                        <div class="widget-content">
                            <div class="visual green">
                                <div class="statbox-sparkline">20,30,30,29,22,15,20,30,32</div>
                            </div>
                            <div class="title">Feedbacks</div>
                            <div class="value">714</div>
                            <a class="more" href="javascript:void(0);">View More <i class="pull-right icon-angle-right"></i></a>
                        </div>
                    </div> <!-- /.smallstat -->
                </div> <!-- /.col-md-3 -->

                <div class="col-sm-6 col-md-3 hidden-xs">
                    <div class="statbox widget box box-shadow">
                        <div class="widget-content">
                            <div class="visual yellow">
                                <i class="icon-dollar"></i>
                            </div>
                            <div class="title">Total Profit</div>
                            <div class="value">$42,512.61</div>
                            <a class="more" href="javascript:void(0);">View More <i class="pull-right icon-angle-right"></i></a>
                        </div>
                    </div> <!-- /.smallstat -->
                </div> <!-- /.col-md-3 -->

                <div class="col-sm-6 col-md-3 hidden-xs">
                    <div class="statbox widget box box-shadow">
                        <div class="widget-content">
                            <div class="visual red">
                                <i class="icon-user"></i>
                            </div>
                            <div class="title">Visitors</div>
                            <div class="value">2 521 719</div>
                            <a class="more" href="javascript:void(0);">View More <i class="pull-right icon-angle-right"></i></a>
                        </div>
                    </div> <!-- /.smallstat -->
                </div> <!-- /.col-md-3 -->
            </div> <!-- /.row -->
            <!-- /Statboxes -->

            <!--=== Blue Chart ===-->
            <div class="row">
                <div class="col-md-12">
                    <div class="widget box">
                        <div class="widget-header">
                            <h4><i class="icon-reorder"></i> Total Clicks (<span class="blue">+29%</span>)</h4>
                            <div class="toolbar no-padding">
                                <div class="btn-group">
                                    <span class="btn btn-xs widget-collapse"><i class="icon-angle-down"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content">
                            <div id="chart_filled_blue" class="chart"></div>
                        </div>
                        <div class="divider"></div>
                        <div class="widget-content">
                            <ul class="stats"> <!-- .no-dividers -->
                                <li>
                                    <strong>4,853</strong>
                                    <small>Total Views</small>
                                </li>
                                <li class="light hidden-xs">
                                    <strong>271</strong>
                                    <small>Last 24 Hours</small>
                                </li>
                                <li>
                                    <strong>1,025</strong>
                                    <small>Unique Users</small>
                                </li>
                                <li class="light hidden-xs">
                                    <strong>105</strong>
                                    <small>Last 24 Hours</small>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div> <!-- /.col-md-12 -->
            </div> <!-- /.row -->
            <!-- /Blue Chart -->

            <div class="row">
                <!--=== Sin/Cos Chart ===-->
                <div class="col-md-6">
                    <div class="widget box">
                        <div class="widget-header">
                            <h4><i class="icon-reorder"></i> Sine/ Cosine</h4>
                            <div class="toolbar no-padding">
                                <div class="btn-group">
                                    <span class="btn btn-xs widget-collapse"><i class="icon-angle-down"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content">
                            <div id="chart_simple" class="chart" style="height: 219px;"></div>
                        </div>
                    </div>
                </div> <!-- /.col-md-6 -->
                <!-- /Sin/Cos Chart -->

                <!--=== Static Table ===-->
                <div class="col-md-6">
                    <div class="widget box">
                        <div class="widget-header">
                            <h4><i class="icon-reorder"></i> New Users</h4>
                            <div class="toolbar no-padding">
                                <div class="btn-group">
                                    <span class="btn btn-xs widget-collapse"><i class="icon-angle-down"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content no-padding">
                            <table class="table table-striped table-checkable table-hover">
                                <thead>
                                <tr>
                                    <th class="checkbox-column">
                                        <input type="checkbox" class="uniform">
                                    </th>
                                    <th class="hidden-xs">First Name</th>
                                    <th>Last Name</th>
                                    <th>Status</th>
                                    <th class="align-center">Approve</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="uniform">
                                    </td>
                                    <td class="hidden-xs">Joey</td>
                                    <td>Greyson</td>
                                    <td><span class="label label-success">Approved</span></td>
                                    <td class="align-center">
												<span class="btn-group">
													<a href="javascript:void(0);" title="Approve" class="btn btn-xs bs-tooltip"><i class="icon-ok"></i></a>
												</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="uniform">
                                    </td>
                                    <td class="hidden-xs">Wolf</td>
                                    <td>Bud</td>
                                    <td><span class="label label-info">Pending</span></td>
                                    <td class="align-center">
												<span class="btn-group">
													<a href="javascript:void(0);" title="Approve" class="btn btn-xs bs-tooltip"><i class="icon-ok"></i></a>
												</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="uniform">
                                    </td>
                                    <td class="hidden-xs">Darin</td>
                                    <td>Alec</td>
                                    <td><span class="label label-warning">Suspended</span></td>
                                    <td class="align-center">
												<span class="btn-group">
													<a href="javascript:void(0);" title="Approve" class="btn btn-xs bs-tooltip"><i class="icon-ok"></i></a>
												</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="uniform">
                                    </td>
                                    <td class="hidden-xs">Andrea</td>
                                    <td>Brenden</td>
                                    <td><span class="label label-danger">Blocked</span></td>
                                    <td class="align-center">
												<span class="btn-group">
													<a href="javascript:void(0);" title="Approve" class="btn btn-xs bs-tooltip"><i class="icon-ok"></i></a>
												</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="row">
                                <div class="table-footer">
                                    <div class="col-md-12">
                                        <div class="table-actions">
                                            <label>Apply action:</label>
                                            <select class="select2" data-minimum-results-for-search="-1" data-placeholder="Select action...">
                                                <option value=""></option>
                                                <option value="Edit">Edit</option>
                                                <option value="Delete">Delete</option>
                                                <option value="Move">Move</option>
                                            </select>
                                        </div>
                                    </div>
                                </div> <!-- /.table-footer -->
                            </div> <!-- /.row -->
                        </div> <!-- /.widget-content -->
                    </div> <!-- /.widget -->
                </div> <!-- /.col-md-6 -->
                <!-- /Static Table -->
            </div> <!-- /.row -->

            <div class="row">
                <!--=== Calendar ===-->
                <div class="col-md-6">
                    <div class="widget">
                        <div class="widget-header">
                            <h4><i class="icon-calendar"></i> Calendar</h4>
                        </div>
                        <div class="widget-content">
                            <div id="calendar"></div>
                        </div>
                    </div> <!-- /.widget box -->
                </div> <!-- /.col-md-6 -->
                <!-- /Calendar -->

                <!--=== Feeds (with Tabs) ===-->
                <div class="col-md-6">
                    <div class="widget">
                        <div class="widget-header">
                            <h4><i class="icon-reorder"></i> Feeds</h4>
                            <div class="toolbar no-padding">
                                <div class="btn-group">
                                    <span class="btn btn-xs widget-collapse"><i class="icon-angle-down"></i></span>
                                    <span class="btn btn-xs widget-refresh"><i class="icon-refresh"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content">
                            <div class="tabbable tabbable-custom">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#tab_feed_1" data-toggle="tab">System</a></li>
                                    <li><a href="#tab_feed_2" data-toggle="tab">Activities</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab_feed_1">
                                        <div class="scroller" data-height="290px" data-always-visible="1" data-rail-visible="0">
                                            <ul class="feeds clearfix">
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-bell"></i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">You have 2 puzzles to solve.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">
                                                            Just now
                                                        </div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New user registered.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">20 mins ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li class="hoverable">
                                                    <a href="javascript:void(0);">
                                                        <div class="col1">
                                                            <div class="content">
                                                                <div class="content-col1">
                                                                    <div class="label label-info"><i class="icon-bullhorn"></i></div>
                                                                </div>
                                                                <div class="content-col2">
                                                                    <div class="desc">New items are in queue.</div>
                                                                </div>
                                                            </div>
                                                        </div> <!-- /.col1 -->
                                                        <div class="col2">
                                                            <div class="date">25 mins ago</div>
                                                        </div> <!-- /.col2 -->
                                                    </a>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-danger"><i class="icon-warning-sign"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">High CPU load on cluster #2. <span class="label label-danger label-mini">Fix it <i class="icon-share-alt"></i></span></div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">30 mins ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-warning"><i class="icon-bolt"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">Disk space to 85% full.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">45 mins ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New user registered.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">1 hour ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-default"><i class="icon-time"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">Time successfully synced.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">1.5 hours ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info"><i class="icon-bullhorn"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">Download finished.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">1.8 hours ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New order received.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">2 hours ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info"><i class="icon-bullhorn"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">Download finished.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">3 hours ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New order received.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">5 hours ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info"><i class="icon-bullhorn"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">Download finished.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">5.5 hours ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New order received.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">7 hours ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info"><i class="icon-bullhorn"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">Download finished.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">16 hours ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New order received.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">20 hours ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                            </ul> <!-- /.feeds -->
                                        </div> <!-- /.scroller -->
                                    </div> <!-- /#tab_feed_1 -->

                                    <div class="tab-pane" id="tab_feed_2">
                                        <div class="scroller" data-height="290px" data-always-visible="1" data-rail-visible="0">
                                            <ul class="feeds clearfix">
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New user registered.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">1 min ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New user registered.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">5 mins ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New order received.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">10 mins ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New user registered.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">20 mins ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New order received.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">30 mins ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New user registered.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">40 mins ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New order received.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">50 mins ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New user registered.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">1 hour ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info"><i class="icon-plus"></i></div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">New order received.</div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.col1 -->
                                                    <div class="col2">
                                                        <div class="date">1.5 hours ago</div>
                                                    </div> <!-- /.col2 -->
                                                </li>
                                            </ul> <!-- /.feeds -->
                                        </div> <!-- /.scroller -->
                                    </div> <!-- /#tab_feed_1 -->
                                </div> <!-- /.tab-content -->
                            </div> <!-- /.tabbable tabbable-custom-->
                        </div> <!-- /.widget-content -->
                    </div> <!-- /.widget .box -->
                </div> <!-- /.col-md-6 -->
                <!-- /Feeds (with Tabs) -->
            </div> <!-- /.row -->
            <!-- /Page Content -->
        </div>
        <!-- /.container -->

    </div>
</div>
<div class="index-panel">

    <div class="tabs-bar tabs-fix-top">
        <span class="icon-chevron-left" style="display: none;"></span>

        <div class="ul-wrapper">
            <ul>
                <li>
                    <a href="#tabs-0">欢迎使用</a>
                    <span class='menu' role='presentation' style="display:inline-block;width: 14px;height: 14px"></span>
                    <br/>
                    <span class='menu icon-refresh' role='presentation' title='刷新'></span>
                </li>
            </ul>
        </div>
        <span class="icon-chevron-right" style="display: none;"></span>

        <div id="tabs-0" data-index="0" data-url="${ctx}/admin/welcome"></div>

    </div>

   <iframe id="iframe-tabs-0" tabs="true" class="ui-layout-center"
            frameborder="0" scrolling="auto" src="${ctx}/admin/welcome"></iframe>

    <%@include file="userinfo.jsp"%>

    <div class="ui-layout-north index-header">
        <%@include file="header.jsp"%>
    </div>


    <div class="ui-layout-south">
        <%@include file="footer.jsp"%>
    </div>
    <div class="ui-layout-west menu">
        <%@include file="menu.jsp"%>
    </div>
</div>
<k:contentFooter/>
<script type="text/javascript">
//    $(function() {
//        $.app.initIndex();
//    });
$(document).ready(function(){
    "use strict";

    App.init(); // Init layout and core plugins
    Plugins.init(); // Init all plugins
    FormComponents.init(); // Init all form-specific plugins
});
</script>