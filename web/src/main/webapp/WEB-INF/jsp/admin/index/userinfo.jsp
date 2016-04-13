<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<div class="navbar-buttons navbar-header pull-right" role="navigation" id="userinfo">
  <shiro:user>
  <ul class="nav ace-nav">
    <li class="purple">
      <a data-toggle="dropdown" class="dropdown-toggle" href="#">
        <i class="ace-icon fa fa-bell icon-animated-bell"></i>
        <span class="badge badge-important">8</span>
      </a>

      <ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
        <li class="dropdown-header">
          <i class="ace-icon fa fa-exclamation-triangle"></i>
          8 Notifications
        </li>

        <li class="dropdown-content">
          <ul class="dropdown-menu dropdown-navbar navbar-pink">
            <li>
              <a href="#">
                <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														New Comments
													</span>
                  <span class="pull-right badge badge-info">+12</span>
                </div>
              </a>
            </li>

            <li>
              <a href="#">
                <i class="btn btn-xs btn-primary fa fa-user"></i>
                Bob just signed up as an editor ...
              </a>
            </li>
          </ul>
        </li>

        <li class="dropdown-footer">
          <a class="btn btn-link no-padding view-all-notification">
            查看所有通知
            <i class="ace-icon fa fa-arrow-right"></i>
          </a>
        </li>
      </ul>
    </li>
    <li class="green">
      <a data-toggle="dropdown" class="dropdown-toggle" href="#">
        <i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
        <span class="badge badge-success">5</span>
      </a>

      <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
        <li class="dropdown-header">
          <i class="ace-icon fa fa-envelope-o"></i>
          5 Messages
        </li>

        <li class="dropdown-content">
          <ul class="dropdown-menu dropdown-navbar">
            <li>
              <a href="#" class="clearfix">
                <img src="${ctx}/static/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar"/>
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Alex:</span>
														Ciao sociis natoque penatibus et auctor ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>a moment ago</span>
													</span>
												</span>
              </a>
            </li>

            <li>
              <a href="#" class="clearfix">
                <img src="${ctx}/static/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar"/>
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Susan:</span>
														Vestibulum id ligula porta felis euismod ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>20 minutes ago</span>
													</span>
												</span>
              </a>
            </li>

            <li>
              <a href="#" class="clearfix">
                <img src="${ctx}/static/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar"/>
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Bob:</span>
														Nullam quis risus eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>3:15 pm</span>
													</span>
												</span>
              </a>
            </li>

            <li>
              <a href="#" class="clearfix">
                <img src="${ctx}/static/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar"/>
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Kate:</span>
														Ciao sociis natoque eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>1:33 pm</span>
													</span>
												</span>
              </a>
            </li>

            <li>
              <a href="#" class="clearfix">
                <img src="${ctx}/static/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar"/>
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Fred:</span>
														Vestibulum id penatibus et auctor  ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>10:09 am</span>
													</span>
												</span>
              </a>
            </li>
          </ul>
        </li>

        <li class="dropdown-footer">
          <a href="inbox.html">
            See all messages
            <i class="ace-icon fa fa-arrow-right"></i>
          </a>
        </li>
      </ul>
    </li>
    <!-- #section:basics/navbar.user_menu -->
    <li class="light-blue">
      <a data-toggle="dropdown" href="#" class="dropdown-toggle">
        <img class="nav-user-photo" src="${ctx}/static/avatars/user.jpg" alt="Jason's Photo"/>
								<span class="user-info">
									<small>您好,</small>
                    <sys:showLoginUsername/>
								</span>

        <i class="ace-icon fa fa-caret-down"></i>
      </a>

      <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
        <li>
          <a href="#" class="btn-view-info">
            <i class="ace-icon fa fa-user"></i>
            个人资料
          </a>
        </li>
        <li>
          <a href="#" class="btn-change-password">
            <i class="ace-icon fa fa-key"></i>
            修改密码
          </a>
        </li>
        <li class="divider"></li>
        <li>
          <a href="${ctx}/logout" data-toggle="tooltip" data-placement="bottom" title="退出">
            <i class="ace-icon fa fa-power-off"></i>
            退出
          </a>
        </li>
      </ul>
    </li>
    <!-- /section:basics/navbar.user_menu -->
  </ul>
  </shiro:user>
</div>
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
              <%--<div class="popover-title title"><a class="btn btn-link no-padding view-all-notification"><i class="icon-table"></i> 查看所有通知</a><span class="pull-right"><a--%>
                  <%--class="btn btn-link no-padding close-notification-list"><i class="icon-remove"></i></a></span></div>--%>
              <%--<div class="popover-content list">--%>
                <%--<img src="${ctx}/static/images/loading.gif" width="20px">&nbsp;&nbsp;&nbsp;加载中...--%>
              <%--</div>--%>
            <%--</div>--%>
            <%--<div class="no-comment">--%>
              <%--<div class="popover-title title"><a class="btn btn-link no-padding view-all-notification"><i class="icon-table"></i> 查看所有通知</a><span class="pull-right"><a--%>
                  <%--class="btn btn-link no-padding close-notification-list"><i class="icon-remove"></i></a></span></div>--%>
              <%--<div class="popover-content list">--%>
                <%--<i class="icon-comment"></i>&nbsp;&nbsp;&nbsp;暂无新通知--%>
              <%--</div>--%>
            <%--</div>--%>
            <%--<div class="detail">--%>
              <%--<div class="popover-title title">--%>
                <%--<a class="btn btn-link no-padding back-notification-list"><i class="icon-reply"></i> 返回通知列表</a><span class="pull-right"><a class="pre">&lt; 上一条</a> | <a--%>
                  <%--class="next">下一条 &gt;</a></span>--%>
              <%--</div>--%>
              <%--<div class="popover-content list">--%>
              <%--</div>--%>
            <%--</div>--%>

            <%--<div class="menu">--%>
              <%--<div class="popover-title title"><a class="btn btn-link no-padding view-all-notification"><i class="icon-table"></i> 查看所有通知</a><span class="pull-right"><a--%>
                  <%--class="btn btn-link no-padding close-notification-list"><i class="icon-remove"></i></a></span></div>--%>
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