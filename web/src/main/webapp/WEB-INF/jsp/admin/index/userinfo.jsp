<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<ul class="nav navbar-nav pull-right">
  <shiro:user>
    <!-- BEGIN NOTIFICATION DROPDOWN -->
    <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
    <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
      <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <i class="icon-bell"></i>
						<span class="badge badge-default">7</span>
      </a>
      <ul class="dropdown-menu">
        <li class="external">
          <h3>你有<span class="bold">7条</span>未读通知</h3>
          <a href="extra_profile.html">显示所有</a>
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
          <h3>你有<span class="bold">4条</span>新消息</h3>
          <a href="page_inbox.html">显示所有</a>
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
    <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown style -->
    <li class="dropdown dropdown-extended dropdown-tasks" id="header_task_bar">
      <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <i class="icon-calendar"></i>
						<span class="badge badge-default">3 </span>
      </a>
      <ul class="dropdown-menu extended tasks">
        <li class="external">
          <h3>你有<span class="bold">12项</span> 未处理任务</h3>
          <a href="page_todo.html">显示所有</a>
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
    <!-- BEGIN USER LOGIN DROPDOWN -->
    <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
    <li class="dropdown dropdown-user">
      <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <img alt="" class="img-circle" src="${ctx}/static/img/avatar3_small.jpg"/>
						<span class="username username-hide-on-mobile"><sys:showLoginUsername/></span>
        <i class="fa fa-angle-down"></i>
      </a>
      <ul class="dropdown-menu dropdown-menu-default">
        <li>
          <a href="extra_profile.html">
            <i class="icon-user"></i> 我的设置 </a>
        </li>
        <li>
          <a href="page_calendar.html">
            <i class="icon-calendar"></i> 我的日历 </a>
        </li>
        <li>
          <a href="inbox.html">
            <i class="icon-envelope-open"></i> 未读消息 <span class="badge badge-danger">
								3 </span>
          </a>
        </li>
        <li>
          <a href="page_todo.html">
            <i class="icon-rocket"></i> 我的任务 <span class="badge badge-success">7</span>
          </a>
        </li>
        <li class="divider">
        </li>
        <li>
          <a href="extra_lock.html">
            <i class="icon-lock"></i> 锁定 </a>
        </li>
        <li>
          <a href="${ctx}/logout">
            <i class="icon-key"></i> 退出 </a>
        </li>
      </ul>
    </li>
    <!-- END USER LOGIN DROPDOWN -->
  </shiro:user>
</ul>
<%--<div id="userinfo">--%>
<%--<shiro:user>--%>
<%--<div id="user-navbar" class="navbar">--%>
<%--<ul class="nav btn-group">--%>
<%--<li class="btn">--%>
<%--<a class="btn-view-info" data-toggle="tooltip" data-placement="bottom" title="点击查看个人资料">--%>
<%--<sys:showLoginUsername/>，欢迎您！--%>
<%--</a>--%>
<%--</li>--%>
<%--<li class="btn" data-toggle="tooltip" data-placement="bottom" title="我的通知">--%>
<%--<a class="btn-notification">--%>
<%--<i class="icon-large icon-envelope-alt icon-volume-up"></i>--%>
<%--</a>--%>
<%--</li>--%>
<%--<div class="notification-list popover fade bottom">--%>
<%--<div class="arrow"></div>--%>
<%--<div class="content">--%>
<%--<div class="loading">--%>
<%--<div class="popover-title title"><a class="btn btn-link no-padding view-all-notification"><i class="icon-table"></i> 查看所有通知</a><span class="pull-right"><a  class="btn btn-link no-padding close-notification-list"><i class="icon-remove"></i></a></span></div>--%>
<%--<div class="popover-content list">--%>
<%--<img src="${ctx}/static/images/loading.gif" width="20px">&nbsp;&nbsp;&nbsp;加载中...--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="no-comment">--%>
<%--<div class="popover-title title"><a class="btn btn-link no-padding view-all-notification"><i class="icon-table"></i> 查看所有通知</a><span class="pull-right"><a  class="btn btn-link no-padding close-notification-list"><i class="icon-remove"></i></a></span></div>--%>
<%--<div class="popover-content list">--%>
<%--<i class="icon-comment"></i>&nbsp;&nbsp;&nbsp;暂无新通知--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="detail">--%>
<%--<div class="popover-title title">--%>
<%--<a class="btn btn-link no-padding back-notification-list"><i class="icon-reply"></i> 返回通知列表</a><span class="pull-right"><a class="pre">&lt; 上一条</a> | <a class="next">下一条 &gt;</a></span>--%>
<%--</div>--%>
<%--<div class="popover-content list">--%>
<%--</div>--%>
<%--</div>--%>

<%--<div class="menu">--%>
<%--<div class="popover-title title"><a class="btn btn-link no-padding view-all-notification"><i class="icon-table"></i> 查看所有通知</a><span class="pull-right"><a  class="btn btn-link no-padding close-notification-list"><i class="icon-remove"></i></a></span></div>--%>
<%--<div class="popover-content list">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="clearfix"></div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<li class="btn" data-toggle="tooltip" data-placement="bottom" title="我的消息">--%>
<%--<a class="btn-message">--%>
<%--<i class="icon-large icon-envelope-alt icon-message"></i>--%>
<%--</a>--%>
<%--</li>--%>
<%--<li class="btn dropdown">--%>
<%--<a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">--%>
<%--<i class="icon-large icon-cogs"></i>--%>
<%--<i class="icon-caret-down"></i>--%>
<%--</a>--%>
<%--<ul class="dropdown-menu pull-right">--%>
<%--<li>--%>
<%--<a class="btn-view-info">--%>
<%--<i class="icon-user"></i>--%>
<%--个人资料--%>
<%--</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a class="btn-change-password">--%>
<%--<i class="icon-key"></i>--%>
<%--修改密码--%>
<%--</a>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</li>--%>
<%--<li class="btn">--%>
<%--<a href="${ctx}/logout" data-toggle="tooltip" data-placement="bottom" title="退出"><i class="icon-large icon-signin"></i></a>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</shiro:user>--%>
<%--</div>--%>