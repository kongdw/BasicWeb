<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<k:contentHeader title="K0n9后台管理系统" index="false"/>
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
      <img src="${ctx}/static/images/logo.png" alt="logo"/>
      <strong>K0n9后台管理系统</strong>
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
    <%@include file="userinfo.jsp" %>
    <!-- /Top Right Menu -->
  </div>
  <!-- /top navigation bar -->
</header>
<!-- /.header -->
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
      </div>
      <!-- /.sidebar-search-results -->

      <!--=== Navigation ===-->
      <%@include file="menu.jsp" %>
      <!-- /Navigation -->
      <div class="sidebar-title">
        <span>通知</span>
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
            <input type="radio" name="theme-switcher" data-theme="bright"><i class="icon-sun"></i> 明亮
          </label>
          <label class="btn">
            <input type="radio" name="theme-switcher" data-theme="dark"><i class="icon-moon"></i> 暗淡
          </label>
        </div>
      </div>

    </div>
    <div id="divider" class="resizeable"></div>
  </div>
  <!-- /Sidebar -->
  <div id="content">
    <iframe id="iframe-tabs-0" name="mainFrame" scrolling="no" src="${ctx}/admin/welcome" frameborder="0" style="padding:0px; width: 100%; height: auto;"></iframe>
  </div>
</div>
<%--<div class="index-panel">--%>

<%--<div class="tabs-bar tabs-fix-top">--%>
<%--<span class="icon-chevron-left" style="display: none;"></span>--%>

<%--<div class="ul-wrapper">--%>
<%--<ul>--%>
<%--<li>--%>
<%--<a href="#tabs-0">欢迎使用</a>--%>
<%--<span class='menu' role='presentation' style="display:inline-block;width: 14px;height: 14px"></span>--%>
<%--<br/>--%>
<%--<span class='menu icon-refresh' role='presentation' title='刷新'></span>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<span class="icon-chevron-right" style="display: none;"></span>--%>

<%--<div id="tabs-0" data-index="0" data-url="${ctx}/admin/welcome"></div>--%>

<%--</div>--%>

<%--<iframe id="iframe-tabs-0" tabs="true" class="ui-layout-center"--%>
<%--frameborder="0" scrolling="auto" src="${ctx}/admin/welcome"></iframe>--%>

<%--<%@include file="userinfo.jsp"%>--%>

<%--<div class="ui-layout-north index-header">--%>
<%--<%@include file="header.jsp"%>--%>
<%--</div>--%>


<%--<div class="ui-layout-south">--%>
<%--<%@include file="footer.jsp"%>--%>
<%--</div>--%>
<%--<div class="ui-layout-west menu">--%>
<%--<%@include file="menu.jsp"%>--%>
<%--</div>--%>
<%--</div>--%>
<k:contentFooter/>
<script type="text/javascript">
  var browserVersion = window.navigator.userAgent.toUpperCase();
  var isOpera = false;
  var isFireFox = false;
  var isChrome = false;
  var isSafari = false;
  var isIE = false;
  var iframeTime;
  function reinitIframe(iframeId, minHeight) {
    try {
      var iframe = document.getElementById(iframeId);
      var bHeight = 0;
      if (isChrome == false && isSafari == false)
        bHeight = iframe.contentWindow.document.body.scrollHeight;

      var dHeight = 0;
      if (isFireFox == true)
        dHeight = iframe.contentWindow.document.documentElement.offsetHeight + 2;
      else if (isIE == false && isOpera == false)
        dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
      else
        bHeight += 3;
      var height = Math.max(bHeight, dHeight);
      if (height < minHeight) height = minHeight;
      iframe.style.height = height + "px";
    } catch (ex) { }
  }
  function startInit(iframeId, minHeight) {
    isOpera = browserVersion.indexOf("OPERA") > -1 ? true : false;
    isFireFox = browserVersion.indexOf("FIREFOX") > -1 ? true : false;
    isChrome = browserVersion.indexOf("CHROME") > -1 ? true : false;
    isSafari = browserVersion.indexOf("SAFARI") > -1 ? true : false;
    if (!!window.ActiveXObject || "ActiveXObject" in window)
      isIE = true;
    reinitIframe(iframeId, minHeight);
    if (iframeTime != null)
      clearInterval(iframeTime)
    iframeTime = window.setInterval("reinitIframe('" + iframeId + "'," + minHeight + ")", 100);
  }


</script>
<script type="text/javascript">
  //    $(function() {
  //        $.app.initIndex();
  //    });
  $(document).ready(function () {
    startInit('iframe-tabs-0', 560);
    App.init(); // Init layout and core plugins
    Plugins.init(); // Init all plugins
    FormComponents.init(); // Init all form-specific plugins
  });
</script>