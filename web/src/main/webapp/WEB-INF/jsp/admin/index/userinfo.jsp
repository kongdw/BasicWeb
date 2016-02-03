<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<ul class="nav navbar-nav navbar-right">
<shiro:user>
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
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="我的通知">
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

  <!-- User Login Dropdown -->
  <li class="dropdown user">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
      <!--<img alt="" src="assets/img/avatar1_small.jpg" />-->
      <i class="icon-male"></i>
      <span class="username"><sys:showLoginUsername/></span>
      <i class="icon-caret-down small"></i>
    </a>
    <ul class="dropdown-menu">
      <li><a href="#"><i class="icon-user"></i> 我的信息</a></li>
      <li><a href="#"><i class="icon-calendar"></i> 我的日历</a></li>
      <li><a href="#"><i class="icon-tasks"></i> 我的任务</a></li>
      <li class="divider"></li>
      <li><a href="${ctx}/logout"><i class="icon-key"></i> 退出</a></li>
    </ul>
  </li>
  </shiro:user>
  <!-- /user login dropdown -->
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