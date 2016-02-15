<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!--[if lt IE 9]>
<script src="${ctx}/static/plugins/respond.min.js"></script>
<script src="${ctx}/static/plugins/excanvas.min.js"></script>
<![endif]-->

<script src="${ctx}/static/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="${ctx}/static/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<script src="${ctx}/static/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${ctx}/static/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="${ctx}/static/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="${ctx}/static/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/static/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<script>
  var ctx = '${ctx}';
</script>