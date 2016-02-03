<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<k:contentHeader/>
<%@include file="/WEB-INF/jsp/common/import-calendar-css.jspf"%>
<div class="container">
  <!-- Breadcrumbs line -->
  <div class="crumbs">
    <ul id="breadcrumbs" class="breadcrumb">
      <li  class="current">
        <i class="icon-home"></i>
        <a href="#">我的主页</a>
      </li>
      <%--<li class="current">--%>
        <%--<a href="pages_calendar.html" title="">Calendar</a>--%>
      <%--</li>--%>
    </ul>
    <%--<ul class="crumb-buttons">--%>
    <%--<li><a href="charts.html" title=""><i class="icon-signal"></i><span>Statistics</span></a></li>--%>
    <%--<li class="dropdown"><a href="#" title="" data-toggle="dropdown"><i class="icon-tasks"></i><span>Users <strong>(+3)</strong></span><i class="icon-angle-down left-padding"></i></a>--%>
    <%--<ul class="dropdown-menu pull-right">--%>
    <%--<li><a href="form_components.html" title=""><i class="icon-plus"></i>Add new User</a></li>--%>
    <%--<li><a href="tables_dynamic.html" title=""><i class="icon-reorder"></i>Overview</a></li>--%>
    <%--</ul>--%>
    <%--</li>--%>
    <%--<li class="range"><a href="#">--%>
    <%--<i class="icon-calendar"></i>--%>
    <%--<span></span>--%>
    <%--<i class="icon-angle-down"></i>--%>
    <%--</a></li>--%>
    <%--</ul>--%>
  </div>
  <!-- /Breadcrumbs line -->

  <!--=== Page Header ===-->
  <div class="page-header">
    <%--<div class="page-title">--%>
    <%--<h3>Dashboard</h3>--%>
    <%--<span>Good morning, John!</span>--%>
    <%--</div>--%>

    <%--<!-- Page Stats -->--%>
    <%--<ul class="page-stats">--%>
    <%--<li>--%>
    <%--<div class="summary">--%>
    <%--<span>New orders</span>--%>
    <%--<h3>17,561</h3>--%>
    <%--</div>--%>
    <%--<div id="sparkline-bar" class="graph sparkline hidden-xs">20,15,8,50,20,40,20,30,20,15,30,20,25,20</div>--%>
    <%--<!-- Use instead of sparkline e.g. this:--%>
    <%--<div class="graph circular-chart" data-percent="73">73%</div>--%>
    <%---->--%>
    <%--</li>--%>
    <%--<li>--%>
    <%--<div class="summary">--%>
    <%--<span>My balance</span>--%>
    <%--<h3>$21,561.21</h3>--%>
    <%--</div>--%>
    <%--<div id="sparkline-bar2" class="graph sparkline hidden-xs">20,15,8,50,20,40,20,30,20,15,30,20,25,20</div>--%>
    <%--</li>--%>
    <%--</ul>--%>
    <%--<!-- /Page Stats -->--%>
  </div>
  <!-- /Page Header -->

  <!--=== Page Content ===-->

  <!--=== Blue Chart ===-->
  <%--<div class="row">--%>
    <%--<div class="col-md-12">--%>
      <%--<div class="widget box">--%>
      <%--<div class="widget-header">--%>
      <%--<h4><i class="icon-reorder"></i> Total Clicks (<span class="blue">+29%</span>)</h4>--%>
      <%--<div class="toolbar no-padding">--%>
      <%--<div class="btn-group">--%>
      <%--<span class="btn btn-xs widget-collapse"><i class="icon-angle-down"></i></span>--%>
      <%--</div>--%>
      <%--</div>--%>
      <%--</div>--%>
      <%--<div class="widget-content">--%>
      <%--<div id="chart_filled_blue" class="chart"></div>--%>
      <%--</div>--%>
      <%--<div class="divider"></div>--%>
      <%--<div class="widget-content">--%>
      <%--<ul class="stats"> <!-- .no-dividers -->--%>
      <%--<li>--%>
      <%--<strong>4,853</strong>--%>
      <%--<small>Total Views</small>--%>
      <%--</li>--%>
      <%--<li class="light hidden-xs">--%>
      <%--<strong>271</strong>--%>
      <%--<small>Last 24 Hours</small>--%>
      <%--</li>--%>
      <%--<li>--%>
      <%--<strong>1,025</strong>--%>
      <%--<small>Unique Users</small>--%>
      <%--</li>--%>
      <%--<li class="light hidden-xs">--%>
      <%--<strong>105</strong>--%>
      <%--<small>Last 24 Hours</small>--%>
      <%--</li>--%>
      <%--</ul>--%>
      <%--</div>--%>
      <%--</div>--%>
    <%--</div>--%>
    <!-- /.col-md-12 -->
  <%--</div>--%>
  <!-- /.row -->
  <!-- /Blue Chart -->

  <div class="row">
    <!--=== Calendar ===-->
    <div class="col-md-6">
      <div class="widget">
        <div class="widget-header">
          <h4><i class="icon-calendar"></i> 我的日历</h4>
          (<span class="badge badge-important" data-toggle="tooltip" data-placement="bottom" title="最近三天，您有${calendarCount}个提醒提醒事项">${calendarCount}个</span>)
        </div>
        <div class="widget-content">
          <div id="calendar"></div>
        </div>
      </div>
      <!-- /.widget box -->
    </div>
    <!-- /.col-md-6 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">
                          Just now
                        </div>
                      </div>
                      <!-- /.col2 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">5.5 hours ago</div>
                      </div>
                      <!-- /.col2 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">7 hours ago</div>
                      </div>
                      <!-- /.col2 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">16 hours ago</div>
                      </div>
                      <!-- /.col2 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">20 hours ago</div>
                      </div>
                      <!-- /.col2 -->
                    </li>
                  </ul>
                  <!-- /.feeds -->
                </div>
                <!-- /.scroller -->
              </div>
              <!-- /#tab_feed_1 -->

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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">1 min ago</div>
                      </div>
                      <!-- /.col2 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">5 mins ago</div>
                      </div>
                      <!-- /.col2 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">10 mins ago</div>
                      </div>
                      <!-- /.col2 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">20 mins ago</div>
                      </div>
                      <!-- /.col2 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">30 mins ago</div>
                      </div>
                      <!-- /.col2 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">40 mins ago</div>
                      </div>
                      <!-- /.col2 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">50 mins ago</div>
                      </div>
                      <!-- /.col2 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">1 hour ago</div>
                      </div>
                      <!-- /.col2 -->
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
                      </div>
                      <!-- /.col1 -->
                      <div class="col2">
                        <div class="date">1.5 hours ago</div>
                      </div>
                      <!-- /.col2 -->
                    </li>
                  </ul>
                  <!-- /.feeds -->
                </div>
                <!-- /.scroller -->
              </div>
              <!-- /#tab_feed_1 -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.tabbable tabbable-custom-->
        </div>
        <!-- /.widget-content -->
      </div>
      <!-- /.widget .box -->
    </div>
    <!-- /.col-md-6 -->
    <!-- /Feeds (with Tabs) -->

  </div>
  <!-- /.row -->
  <!-- /Page Content -->
</div>
<%--<style>--%>

    <%--legend {--%>
        <%--cursor: pointer;--%>
    <%--}--%>
    <%--.fc-button-add {--%>
        <%--margin-right: 10px!important;--%>
    <%--}--%>

    <%--#loading {--%>
        <%--position: absolute;--%>
        <%--top: 5px;--%>
        <%--right: 5px;--%>
    <%--}--%>

    <%--.ui-dialog {--%>
        <%--overflow: visible!important;--%>
    <%--}--%>
    <%--.ui-dialog-content {--%>
        <%--overflow: visible!important;--%>
    <%--}--%>

    <%--#calendar {--%>
        <%--width: 750px;--%>
        <%--margin: 0 auto;--%>
    <%--}--%>
<%--</style>--%>
<%--<div  style="margin: 5px;margin-top: 10px;">--%>
    <%--<div class="row-fluid tool ui-toolbar">--%>
        <%--<div style="padding-left: 10px;">--%>
            <%--<a class="btn btn-link btn-view-info" data-toggle="tooltip" data-placement="bottom" title="点击查看个人资料/修改密码">--%>
                <%--<sys:showLoginUsername/>，欢迎您！--%>
            <%--</a>--%>
            <%--<span class="muted">|</span>--%>
            <%--&nbsp;--%>
            <%--<span class="muted">--%>
                <%--您有--%>
                <%--<a class="btn btn-link btn-view-message no-padding" data-toggle="tooltip" data-placement="bottom" title="点击查看未读消息">--%>
                    <%--<span class="badge badge-important">${messageUnreadCount}条</span>--%>
                <%--</a>--%>
                <%--未读消息--%>
            <%--</span>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<br/>--%>

    <%--<fieldset>--%>
        <%--<legend>--%>
            <%--我的日历--%>

            <%--(<span class="badge badge-important" data-toggle="tooltip" data-placement="bottom" title="最近三天，您有${calendarCount}个提醒提醒事项">${calendarCount}个</span>)--%>
            <%--<i class="icon-double-angle-down"></i>--%>
        <%--</legend>--%>

        <%--<div id='calendar'></div>--%>

    <%--</fieldset>--%>

    <%--<br/>--%>
    <%--<br/>--%>
    <%--<br/>--%>

<%--</div>--%>
<k:contentFooter/>
<%@include file="/WEB-INF/jsp/common/import-calendar-js.jspf"%>
<script>
//    $(function() {
//        $.app.initCommonBtn();
//        $("legend").click(function() {
//            var next = $(this).next();
//            if(next.is(":hidden")) {
//                $(this).find("i").removeClass("icon-double-angle-up");
//                $(this).find("i").addClass("icon-double-angle-down");
//                next.slideDown(300);
//            } else {
//                next.slideUp(300);
//                $(this).find("i").removeClass("icon-double-angle-down");
//                $(this).find("i").addClass("icon-double-angle-up");
//            }
//        });
//        $.app.initCalendar();
//
//    })
</script>
