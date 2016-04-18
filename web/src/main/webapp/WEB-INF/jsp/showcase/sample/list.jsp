<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<div>
  <div class="span4">
    <div class="btn-group">
      <shiro:hasPermission name="showcase:sample:create">
        <a class="btn btn-white btn-info btn-sm btn-create">
          <i class="ace-icon fa fa-file-o blue"></i>
          新增
        </a>
      </shiro:hasPermission>
      <shiro:hasPermission name="showcase:sample:update">
        <a class="btn btn-white btn-info btn-sm btn-update">
          <i class="ace-icon fa fa-edit bigger-120 "></i>
          修改
        </a>
      </shiro:hasPermission>
      <shiro:hasPermission name="showcase:sample:delete">
        <a class="btn btn-white btn-info btn-sm btn-delete">
          <i class="ace-icon fa fa-trash"></i>
          删除
        </a>
      </shiro:hasPermission>
    </div>
  </div>
  <div class="span8">
    <%@include file="searchForm.jsp"%>
  </div>
  <%@include file="listTable.jsp"%>
</div>