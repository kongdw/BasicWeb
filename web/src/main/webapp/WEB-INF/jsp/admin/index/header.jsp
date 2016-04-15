<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<ul id="tabs-menu" class="dropdown-menu">
  <li><a class="close-current" href="#">关闭</a></li>
  <li><a class="close-others" href="#">关闭其他</a></li>
  <li><a class="close-all" href="#">关闭所有</a></li>
  <li class="divider"></li>
  <li><a class="close-left-all" href="#">关闭当前左边的所有</a></li>
  <li><a class="close-right-all" href="#">关闭当前右边的所有</a></li>
</ul>
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
