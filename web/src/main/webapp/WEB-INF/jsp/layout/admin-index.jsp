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
  <%@include file="/WEB-INF/jsp/common/import-css.jspf" %>
  <sitemesh:write property='head'/>
</head>
<body>
<header class="header navbar navbar-fixed-top" role="banner">
  <div class="container">
    <ul class="nav navbar-nav">
      <li class="nav-toggle"><a href="javascript:void(0);" title=""><i class="icon-reorder"></i></a></li>
    </ul>
    <a class="navbar-brand" href="index.html">
      <img src="${ctx}/static/img/logo.png" alt="logo"/>
      <strong>档案管理</strong>系统
    </a>
    <a href="javascript:void(0);" class="toggle-sidebar bs-tooltip" data-placement="bottom" data-original-title="显示/隐藏菜单">
      <i class="icon-reorder"></i>
    </a>
    <ul id="page-nav" class="nav navbar-nav navbar-left hidden-xs hidden-sm">
      <li>
        <a href="javascript:void(0);">
          我的主页
        </a>
      </li>
      <li class="dropdown">
        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
          快捷切换
          <i class="icon-caret-down small"></i>
        </a>
        <ul class="dropdown-menu">
        </ul>
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
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
              <span class="photo"><img src="${ctx}/static/img/demo/avatar-1.jpg" alt=""/></span>
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
              <span class="photo"><img src="${ctx}/static/img/demo/avatar-2.jpg" alt=""/></span>
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
              <span class="photo"><img src="${ctx}/static/img/demo/avatar-3.jpg" alt=""/></span>
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


      <li>
        <a href="#" class="dropdown-toggle row-bg-toggle">
          <i class="icon-resize-vertical"></i>
        </a>
      </li>


      <li class="dropdown">
        <a href="#" class="project-switcher-btn dropdown-toggle">
          <i class="icon-folder-open"></i>
          <span>Projects</span>
        </a>
      </li>


      <li class="dropdown user">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">

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

    </ul>
  </div>
  <div id="project-switcher" class="container project-switcher">
    <div id="scrollbar">
      <div class="handle"></div>
    </div>
    <div id="frame">
      <ul class="project-list">
        <li>
          <a href="javascript:void(0);">
            <span class="image"><i class="icon-desktop"></i></span>
            <span class="title">Lorem ipsum dolor</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0);">
            <span class="image"><i class="icon-compass"></i></span>
            <span class="title">Dolor sit invidunt</span>
          </a>
        </li>
        <li class="current">
          <a href="javascript:void(0);">
            <span class="image"><i class="icon-male"></i></span>
            <span class="title">Consetetur sadipscing elitr</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0);">
            <span class="image"><i class="icon-thumbs-up"></i></span>
            <span class="title">Sed diam nonumy</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0);">
            <span class="image"><i class="icon-female"></i></span>
            <span class="title">At vero eos et</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0);">
            <span class="image"><i class="icon-beaker"></i></span>
            <span class="title">Sed diam voluptua</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0);">
            <span class="image"><i class="icon-desktop"></i></span>
            <span class="title">Lorem ipsum dolor</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0);">
            <span class="image"><i class="icon-compass"></i></span>
            <span class="title">Dolor sit invidunt</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0);">
            <span class="image"><i class="icon-male"></i></span>
            <span class="title">Consetetur sadipscing elitr</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0);">
            <span class="image"><i class="icon-thumbs-up"></i></span>
            <span class="title">Sed diam nonumy</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0);">
            <span class="image"><i class="icon-female"></i></span>
            <span class="title">At vero eos et</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0);">
            <span class="image"><i class="icon-beaker"></i></span>
            <span class="title">Sed diam voluptua</span>
          </a>
        </li>
      </ul>
    </div>
  </div>
</header>

<div id="container">
  <div id="sidebar" class="sidebar-fixed">
    <div id="sidebar-content">


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


      <div class="sidebar-search-results">

        <i class="icon-remove close"></i>

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
      </div>


      <ul id="nav">
      </ul>


      <div class="sidebar-title">
        <span>Notifications</span>
      </div>
      <ul class="notifications demo-slide-in">
        <li style="display: none;">
          <div class="col-left">
            <span class="label label-danger"><i class="icon-warning-sign"></i></span>
          </div>
          <div class="col-right with-margin">
            <span class="message">Server <strong>#512</strong> crashed.</span>
            <span class="time">few seconds ago</span>
          </div>
        </li>
        <li style="display: none;">
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
  <div id="content">
    <div class="container">
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
      <div class="page-header">
        <div class="page-title">
          <h3>Dashboard</h3>
          <span>Good morning, John!</span>
        </div>


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
      </div>
      <div class="row">
        <div class="col-md-12">
          <div id="page-content">
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<%@include file="/WEB-INF/jsp/common/import-js.jspf" %>
<script type="text/javascript" src="${ctx}/static/js/custom.js"></script>
<%--<script type="text/javascript" src="${ctx}/static/js/demo/pages_calendar.js"></script>--%>
<%--<script type="text/javascript" src="${ctx}/static/js/demo/charts/chart_filled_blue.js"></script>--%>
<%--<script type="text/javascript" src="${ctx}/static/js/demo/charts/chart_simple.js"></script>--%>
<script type="text/javascript" src="${ctx}/static/js/utils.js"></script>
<%--<script type="text/javascript" src="${ctx}/static/js/admin/admin.js"></script>--%>
<script>
  $(document).ready(function () {
    "use strict";
    Util.init();
    App.init(); // Init layout and core plugins
    Plugins.init(); // Init all plugins
    FormComponents.init(); // Init all form-specific plugins
//    AdminGlobal.init();
  });
</script>
</body>
</html>
