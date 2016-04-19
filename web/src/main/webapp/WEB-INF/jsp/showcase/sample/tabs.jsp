<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<div id="content-tabs">
  <ul class="nav nav-tabs">
    <li>
      <a href="${ctx}/showcase/sample">
        <i class="icon-table"></i>
        所有示例列表
      </a>
    </li>
    <li>
      <a href="${ctx}/showcase/sample?search.show_eq=true">
        <i class="icon-table"></i>
        可显示的示例列表
      </a>
    </li>
    <li>
      <a href="${ctx}/showcase/sample?search.show_eq=false">
        <i class="icon-table"></i>
        隐藏的示例列表
      </a>
    </li>
  </ul>
  <k:showMessage/>
</div>
<script type="text/javascript">
  $(document).ready(function() {
    $('#content-tabs').tabs();
  })
</script>