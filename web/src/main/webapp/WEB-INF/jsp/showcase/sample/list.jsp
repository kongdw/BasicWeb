<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<k:showMessage/>
<div class="portlet light">
  <div class="portlet-body" style="min-height:520px">
    <div class="tabbable-line">
      <ul class="nav nav-tabs">
        <li ${empty param['search.show_eq'] ? 'class="active"' : ''}>
          <a href="javascript:" data-toggle="tab" data-url="${ctx}/showcase/sample">
            <i class="fa fa-table"></i>
            所有示例列表
          </a>
        </li>
        <li ${param['search.show_eq'] eq 'true' ? 'class="active"' : ''}>
          <a href="${ctx}/showcase/sample?search.show_eq=true" data-toggle="tab">
            <i class="fa fa-table"></i>
            可显示的示例列表
          </a>
        </li>
        <li ${param['search.show_eq'] eq 'false' ? 'class="active"' : ''}>
          <a href="${ctx}/showcase/sample?search.show_eq=false" data-toggle="tab">
            <i class="fa fa-table"></i>
            隐藏的示例列表
          </a>
        </li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active">
          <div class="table-actions-wrapper">
            <%@include file="searchForm.jsp" %>
          </div>
          <div style="border: 1px solid #e1e1e1;border-bottom: 0px;">
            <div class="row">
              <div class="col-md-4">
                <div class="btn-group">
                  <shiro:hasPermission name="showcase:sample:create">
                    <a class="btn btn-create">
                      <i class="fa fa-file-o"></i>
                      新增
                    </a>
                  </shiro:hasPermission>
                  <shiro:hasPermission name="showcase:sample:update">
                    <a class="btn btn-update">
                      <i class="fa fa-edit"></i>
                      修改
                    </a>
                  </shiro:hasPermission>
                  <shiro:hasPermission name="showcase:sample:delete">
                    <a class="btn btn-delete">
                      <i class="fa fa-trash"></i>
                      删除
                    </a>
                  </shiro:hasPermission>
                </div>
              </div>
              <div class="col-md-8">
                <div class="pull-right" style="padding-top:4px;">
                  <k:page page="${page}"/>
                </div>
              </div>
            </div>
          </div>
          <div class="table-responsive">
            <%@include file="listTable.jsp" %>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
