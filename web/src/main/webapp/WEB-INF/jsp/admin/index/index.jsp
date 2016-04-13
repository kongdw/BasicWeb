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
    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
      <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
        <button class="btn btn-success">
          <i class="ace-icon fa fa-signal"></i>
        </button>
        <button class="btn btn-info">
          <i class="ace-icon fa fa-pencil"></i>
        </button>
        <button class="btn btn-warning">
          <i class="ace-icon fa fa-users"></i>
        </button>
        <button class="btn btn-danger">
          <i class="ace-icon fa fa-cogs"></i>
        </button>
      </div>
      <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
        <span class="btn btn-success"></span>
        <span class="btn btn-info"></span>
        <span class="btn btn-warning"></span>
        <span class="btn btn-danger"></span>
      </div>
    </div>
    <div id="menu" class="ui-layout-south">
      <%@include file="menu.jsp" %>
    </div>
    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
      <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
  </div>
  <div class="main-content">
    <div class="main-content-inner">
      <div class="page-content">
        <div class="ace-settings-container" id="ace-settings-container">
          <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
            <i class="ace-icon fa fa-cog bigger-130"></i>
          </div>
          <div class="ace-settings-box clearfix" id="ace-settings-box">
            <div class="pull-left width-50">
              <div class="ace-settings-item">
                <div class="pull-left">
                  <select id="skin-colorpicker" class="hide">
                    <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                    <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                    <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                    <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                  </select>
                </div>
                <span>&nbsp; 选择皮肤颜色</span>
              </div>
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off"/>
                <label class="lbl" for="ace-settings-navbar"> 固定导航栏</label>
              </div>
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off"/>
                <label class="lbl" for="ace-settings-sidebar"> 固定侧边栏</label>
              </div>
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off"/>
                <label class="lbl" for="ace-settings-breadcrumbs"> 固定面包屑</label>
              </div>
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off"/>
                <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
              </div>
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off"/>
                <label class="lbl" for="ace-settings-add-container">
                  Inside
                  <b>.container</b>
                </label>
              </div>
            </div>
            <div class="pull-left width-50">
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off"/>
                <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
              </div>
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off"/>
                <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
              </div>
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off"/>
                <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
              </div>
            </div>
          </div>
        </div>
        <div class="tabs-bar tabs-fix-top  index-panel">
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
          <div id="tabs-0" data-index="0" class="ui-layout-center" data-url="${ctx}/admin/welcome">
            <iframe id="iframe-tabs-0" tabs="true" frameborder="0" scrolling="auto" src="${ctx}/admin/welcome"></iframe>
          </div>
        </div>
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
      $(function() {
          $.app.initIndex();
      });
</script>