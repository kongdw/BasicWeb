<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="zh-CN" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="zh-CN" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zh-CN">
<!--<![endif]-->
<head>
  <meta charset="utf-8"/>
  <title><sitemesh:write property='title'/></title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">
  <meta content="" name="description"/>
  <meta content="" name="author"/>
  <%@include file="/WEB-INF/jsp/layout/admin-include-header.jsp" %>
  <link href="${ctx}/static/css/plugins.css" rel="stylesheet" type="text/css"/>
  <link href="${ctx}/static/css/layout.css" rel="stylesheet" type="text/css"/>
  <link id="style_color" href="${ctx}/static/css/themes/grey.css" rel="stylesheet" type="text/css"/>
  <sitemesh:write property='head'/>
</head>
<body class="page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo page-header-fixed-mobile page-footer-fixed1">
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
  <!-- BEGIN HEADER INNER -->
  <div class="page-header-inner">
    <!-- BEGIN LOGO -->
    <div class="page-logo">
      <a href="index.html">
        <img src="${ctx}/static/img/logo-default.png" alt="logo" class="logo-default"/>
      </a>
      <div class="menu-toggler sidebar-toggler">
        <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
      </div>
    </div>
    <!-- END LOGO -->
    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
    <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
    </a>
    <!-- END RESPONSIVE MENU TOGGLER -->
    <!-- BEGIN PAGE ACTIONS -->
    <!-- DOC: Remove "hide" class to enable the page header actions -->
    <div class="page-actions">
      <div class="btn-group hide">
        <button type="button" class="btn btn-circle red-pink dropdown-toggle" data-toggle="dropdown">
          <i class="icon-bar-chart"></i>&nbsp;<span class="hidden-sm hidden-xs">New&nbsp;</span>&nbsp;<i class="fa fa-angle-down"></i>
        </button>
        <ul class="dropdown-menu" role="menu">
          <li>
            <a href="javascript:;">
              <i class="icon-user"></i> New User </a>
          </li>
          <li>
            <a href="javascript:;">
              <i class="icon-present"></i> New Event <span class="badge badge-success">4</span>
            </a>
          </li>
          <li>
            <a href="javascript:;">
              <i class="icon-basket"></i> New order </a>
          </li>
          <li class="divider">
          </li>
          <li>
            <a href="javascript:;">
              <i class="icon-flag"></i> Pending Orders <span class="badge badge-danger">4</span>
            </a>
          </li>
          <li>
            <a href="javascript:;">
              <i class="icon-users"></i> Pending Users <span class="badge badge-warning">12</span>
            </a>
          </li>
        </ul>
      </div>
      <div class="btn-group">
        <button type="button" class="btn btn-circle green-haze dropdown-toggle" data-toggle="dropdown">
          <i class="fa fa-plus"></i>&nbsp;<span class="hidden-sm hidden-xs">Create&nbsp;</span>&nbsp;<i class="fa fa-angle-down"></i>
        </button>
        <ul class="dropdown-menu" role="menu">
          <li>
            <a href="javascript:;">
              <i class="icon-docs"></i> New Post </a>
          </li>
          <li>
            <a href="javascript:;">
              <i class="icon-tag"></i> New Comment </a>
          </li>
          <li>
            <a href="javascript:;">
              <i class="icon-share"></i> Share </a>
          </li>
          <li class="divider">
          </li>
          <li>
            <a href="javascript:;">
              <i class="icon-flag"></i> Comments <span class="badge badge-success">4</span>
            </a>
          </li>
          <li>
            <a href="javascript:;">
              <i class="icon-users"></i> Feedbacks <span class="badge badge-danger">2</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <!-- END PAGE ACTIONS -->
    <!-- BEGIN PAGE TOP -->
    <div class="page-top">
      <!-- BEGIN HEADER SEARCH BOX -->
      <!-- DOC: Apply "search-form-expanded" right after the "search-form" class to have half expanded search box -->
      <%--<form class="search-form search-form-expanded" action="extra_search.html" method="GET">--%>
        <%--<div class="input-group">--%>
          <%--<input type="text" class="form-control" placeholder="Search..." name="query">--%>
					<%--<span class="input-group-btn">--%>
					<%--<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>--%>
					<%--</span>--%>
        <%--</div>--%>
      <%--</form>--%>
      <!-- END HEADER SEARCH BOX -->
      <!-- BEGIN TOP NAVIGATION MENU -->
      <div class="top-menu">
        <ul class="nav navbar-nav pull-right">
          <!-- BEGIN NOTIFICATION DROPDOWN -->
          <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
          <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
              <i class="icon-bell"></i>
						<span class="badge badge-default">
						7 </span>
            </a>
            <ul class="dropdown-menu">
              <li class="external">
                <h3><span class="bold">12 pending</span> notifications</h3>
                <a href="extra_profile.html">view all</a>
              </li>
              <li>
                <ul class="dropdown-menu-list scroller" style="height: 250px;" data-handle-color="#637283">
                  <li>
                    <a href="javascript:;">
                      <span class="time">just now</span>
										<span class="details">
										<span class="label label-sm label-icon label-success">
										<i class="fa fa-plus"></i>
										</span>
										New user registered. </span>
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
          <!-- END NOTIFICATION DROPDOWN -->
          <!-- BEGIN INBOX DROPDOWN -->
          <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
          <li class="dropdown dropdown-extended dropdown-inbox" id="header_inbox_bar">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
              <i class="icon-envelope-open"></i>
						<span class="badge badge-default">
						4 </span>
            </a>
            <ul class="dropdown-menu">
              <li class="external">
                <h3>You have <span class="bold">7 New</span> Messages</h3>
                <a href="page_inbox.html">view all</a>
              </li>
              <li>
                <ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
                  <li>
                    <a href="inbox.html?a=view">
										<span class="photo">
										<img src="${ctx}/static/img/avatar2.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Lisa Wong </span>
										<span class="time">Just Now </span>
										</span>
										<span class="message">
										Vivamus sed auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
          <!-- END INBOX DROPDOWN -->
          <!-- BEGIN TODO DROPDOWN -->
          <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
          <li class="dropdown dropdown-extended dropdown-tasks" id="header_task_bar">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
              <i class="icon-calendar"></i>
						<span class="badge badge-default">
						3 </span>
            </a>
            <ul class="dropdown-menu extended tasks">
              <li class="external">
                <h3>You have <span class="bold">12 pending</span> tasks</h3>
                <a href="page_todo.html">view all</a>
              </li>
              <li>
                <ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
                  <li>
                    <a href="javascript:;">
										<span class="task">
										<span class="desc">New release v1.2 </span>
										<span class="percent">30%</span>
										</span>
										<span class="progress">
										<span style="width: 40%;" class="progress-bar progress-bar-success" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">40% Complete</span></span>
										</span>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
										<span class="task">
										<span class="desc">Application deployment</span>
										<span class="percent">65%</span>
										</span>
										<span class="progress">
										<span style="width: 65%;" class="progress-bar progress-bar-danger" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">65% Complete</span></span>
										</span>
                    </a>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
          <!-- END TODO DROPDOWN -->
          <!-- BEGIN USER LOGIN DROPDOWN -->
          <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
          <li class="dropdown dropdown-user">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
              <img alt="" class="img-circle" src="${ctx}/static/img/avatar3_small.jpg"/>
						<span class="username username-hide-on-mobile">
						Nick </span>
              <i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-default">
              <li>
                <a href="extra_profile.html">
                  <i class="icon-user"></i> My Profile </a>
              </li>
              <li>
                <a href="page_calendar.html">
                  <i class="icon-calendar"></i> My Calendar </a>
              </li>
              <li>
                <a href="inbox.html">
                  <i class="icon-envelope-open"></i> My Inbox <span class="badge badge-danger">
								3 </span>
                </a>
              </li>
              <li>
                <a href="page_todo.html">
                  <i class="icon-rocket"></i> My Tasks <span class="badge badge-success">
								7 </span>
                </a>
              </li>
              <li class="divider">
              </li>
              <li>
                <a href="extra_lock.html">
                  <i class="icon-lock"></i> Lock Screen </a>
              </li>
              <li>
                <a href="login.html">
                  <i class="icon-key"></i> Log Out </a>
              </li>
            </ul>
          </li>
          <!-- END USER LOGIN DROPDOWN -->
        </ul>
      </div>
      <!-- END TOP NAVIGATION MENU -->
    </div>
    <!-- END PAGE TOP -->
  </div>
  <!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
  <!-- BEGIN SIDEBAR -->
  <div class="page-sidebar-wrapper">
    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
    <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
    <div class="page-sidebar navbar-collapse collapse">
      <%@include file="menu.jsp" %>
    </div>
  </div>
  <!-- END SIDEBAR -->
  <!-- BEGIN CONTENT -->
  <div class="page-content-wrapper">
    <div class="page-content">
      <!-- BEGIN STYLE CUSTOMIZER -->
      <div class="theme-panel">
        <div class="toggler tooltips" data-container="body" data-placement="left" data-html="true" data-original-title="Click to open advance theme customizer panel">
          <i class="icon-settings"></i>
        </div>
        <div class="toggler-close">
          <i class="icon-close"></i>
        </div>
        <div class="theme-options">
          <div class="theme-option theme-colors clearfix">
						<span>
						THEME COLOR </span>
            <ul>
              <li class="color-default current tooltips" data-style="default" data-container="body" data-original-title="Default">
              </li>
              <li class="color-grey tooltips" data-style="grey" data-container="body" data-original-title="Grey">
              </li>
              <li class="color-blue tooltips" data-style="blue" data-container="body" data-original-title="Blue">
              </li>
              <li class="color-dark tooltips" data-style="dark" data-container="body" data-original-title="Dark">
              </li>
              <li class="color-light tooltips" data-style="light" data-container="body" data-original-title="Light">
              </li>
            </ul>
          </div>
          <div class="theme-option">
						<span>
						Theme Style </span>
            <select class="layout-style-option form-control input-small">
              <option value="square" selected="selected">Square corners</option>
              <option value="rounded">Rounded corners</option>
            </select>
          </div>
          <div class="theme-option">
						<span>
						Layout </span>
            <select class="layout-option form-control input-small">
              <option value="fluid" selected="selected">Fluid</option>
              <option value="boxed">Boxed</option>
            </select>
          </div>
          <div class="theme-option">
						<span>
						Header </span>
            <select class="page-header-option form-control input-small">
              <option value="fixed" selected="selected">Fixed</option>
              <option value="default">Default</option>
            </select>
          </div>
          <div class="theme-option">
						<span>
						Top Dropdown</span>
            <select class="page-header-top-dropdown-style-option form-control input-small">
              <option value="light" selected="selected">Light</option>
              <option value="dark">Dark</option>
            </select>
          </div>
          <div class="theme-option">
						<span>
						Sidebar Mode</span>
            <select class="sidebar-option form-control input-small">
              <option value="fixed">Fixed</option>
              <option value="default" selected="selected">Default</option>
            </select>
          </div>
          <div class="theme-option">
						<span>
						Sidebar Style</span>
            <select class="sidebar-style-option form-control input-small">
              <option value="default" selected="selected">Default</option>
              <option value="compact">Compact</option>
            </select>
          </div>
          <div class="theme-option">
						<span>
						Sidebar Menu </span>
            <select class="sidebar-menu-option form-control input-small">
              <option value="accordion" selected="selected">Accordion</option>
              <option value="hover">Hover</option>
            </select>
          </div>
          <div class="theme-option">
						<span>
						Sidebar Position </span>
            <select class="sidebar-pos-option form-control input-small">
              <option value="left" selected="selected">Left</option>
              <option value="right">Right</option>
            </select>
          </div>
          <div class="theme-option">
						<span>
						Footer </span>
            <select class="page-footer-option form-control input-small">
              <option value="fixed">Fixed</option>
              <option value="default" selected="selected">Default</option>
            </select>
          </div>
        </div>
      </div>
      <!-- END STYLE CUSTOMIZER -->
      <!-- BEGIN PAGE HEADER-->
      <h3 class="page-title">
        Fluid Page <small>responsive boxed layout</small>
      </h3>
      <div class="page-bar">
        <ul class="page-breadcrumb">
          <li>
            <i class="fa fa-home"></i>
            <a href="index.html">Home</a>
            <i class="fa fa-angle-right"></i>
          </li>
        </ul>
      </div>
      <!-- END PAGE HEADER-->
      <!-- BEGIN PAGE CONTENT-->
      <div class="row">
        <div class="col-md-12">
          <sitemesh:write property='body'/>
        </div>
      </div>
      <!-- END PAGE CONTENT-->
    </div>
  </div>
  <!-- END CONTENT -->
  <!-- BEGIN QUICK SIDEBAR -->
  <!--Cooming Soon...-->
  <!-- END QUICK SIDEBAR -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
  <div class="page-footer-inner">
    2016 &copy; 中公网医疗信息技术有限公司
  </div>
  <div class="scroll-to-top">
    <i class="icon-arrow-up"></i>
  </div>
</div>
<%@include file="/WEB-INF/jsp/layout/admin-include-footer.jsp" %>
<script src="${ctx}/static/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="${ctx}/static/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/metronic.js" type="text/javascript"></script>
<script src="${ctx}/static/js/layout.js" type="text/javascript"></script>
<script>
  jQuery(document).ready(function () {
    Metronic.init();
    Layout.init();
  });
</script>
</body>
</html>
