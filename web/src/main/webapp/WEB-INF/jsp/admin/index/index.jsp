<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<k:contentHeader title="档案管理系统" index="true"/>
<div class="navbar navbar-default ace-save-state" id="navbar">
  <div class="navbar-container ace-save-state" id="navbar-container">
    <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
      <span class="sr-only">Toggle sidebar</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <div class="navbar-header pull-left">
      <a href="#" class="navbar-brand">
        <small>
          <i class="fa fa-leaf"></i>
          K0n9 后台管理系统
        </small>
      </a>
    </div>
    <%@include file="userinfo.jsp" %>
  </div>
</div>

<div class="main-container ace-save-state" id="main-container">
  <script type="text/javascript">
    try {
      ace.settings.loadState('main-container')
    } catch (e) {
    }
  </script>
  <div id="sidebar" class="sidebar responsive ace-save-state">
    <script type="text/javascript">
      try {
        ace.settings.loadState('sidebar')
      } catch (e) {
      }
    </script>
    <%@include file="header.jsp" %>

    <div id="menu">
      <%@include file="menu.jsp" %>
    </div>
    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
      <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
  </div>
  <div class="main-content">
    <div class="main-content-inner">
      <div class="breadcrumbs breadcrumbs-fixed" id="breadcrumbs">
        <script type="text/javascript">
          try {
            ace.settings.check('breadcrumbs', 'fixed')
          } catch (e) {
          }
        </script>
        <ul class="breadcrumb">
          <li>
            <i class="ace-icon fa fa-home home-icon"></i>
            <a href="#">Home</a>
          </li>
          <li><a href="#">
            UI &amp; Elements
          </a></li>
          <li class="active">
            Nestable Lists
          </li>
        </ul>
        <!-- /.breadcrumb -->
      </div>
      <%--<div class="tabs-bar tabs-fix-top" style="padding:0;">--%>
      <%--&lt;%&ndash;<span class="fa fa-chevron-left" style="display: none;"></span>&ndash;%&gt;--%>
      <%--<div class="ul-wrapper">--%>
      <%--<ul style="padding-left: 10px;background: #F2F2F2;padding-top: 4px;">--%>
      <%--<li class="active">--%>
      <%--<a href="#tabs-0">欢迎使用</a>--%>
      <%--<span class='menu' role='presentation' style="display:inline-block;width: 14px;height: 14px"></span>--%>
      <%--<br>--%>
      <%--<span class='menu icon-refresh' role='presentation' title='刷新'></span>--%>
      <%--</li>--%>
      <%--</ul>--%>
      <%--</div>--%>
      <%--<span class="fa fa-chevron-right" style="display: none;"></span>--%>

      <%--<div id="tabs-0" data-index="0" style="border: none;padding:0;" data-url="${ctx}/admin/welcome"></div>--%>
      <%--</div>--%>
      <div class="page-content">
        <%@include file="setting.jsp" %>
        <div class="page-content-area" data-ajax-content="true"></div>
      </div>
    </div>

  </div>
  <%@include file="footer.jsp" %>
  <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
    <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
  </a>
</div>
<k:contentFooter/>
<script type="text/javascript">
  var demo_ajax_options = {
    'close_active': true,
    close_mobile_menu: '#sidebar',
    close_dropdowns: true,
    'default_url': 'page/admin/index',//default hash
    'content_url': function (hash) {
      //***NOTE***
      //this is for Ace demo only, you should change it to return a valid URL
      //please refer to documentation for more info

      if (!hash.match(/^page\//)) return false;
      var path = document.location.pathname;
      if(path.match(/(\/admin\/)(index\.html)?/))
      			return path.replace(/(\/admin\/)(index\.html)?/, hash.replace(/^page\//, '')) ;
      return hash.replace(/^page\//, '');
    }
  }
  $('[data-ajax-content=true]').ace_ajax(demo_ajax_options)
  //  $(function () {
  //    $.app.initIndex();
  //  });
</script>