<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) --%>
<%--DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode --%>
<%--DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode --%>
<%--DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing --%>
<%--DOC: Set data-keep-expand="true" to keep the submenues expanded --%>
<%--DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed --%>
<ul class="page-sidebar-menu page-sidebar-menu-hover-submenu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
  <c:forEach items="${menus}" var="m">
    <c:choose>
      <c:when test="${!m.hasChildren}">
        <li>
          <a href="${m.url}">
            <i class="<c:choose><c:when test="${empty m.icon or m.icon eq ''}">icon-link</c:when><c:otherwise>${m.icon}</c:otherwise></c:choose> "></i>
            <span class="title"> ${m.name}</span>
          </a>
        </li>
      </c:when>
      <c:otherwise>
        <li>
          <a href="javascript:void(0);">
            <i class="<c:choose><c:when test="${empty m.icon or m.icon eq ''}">icon-link</c:when><c:otherwise>${m.icon}</c:otherwise></c:choose> "></i>
            <span class="title"> ${m.name}</span>
            <span class="arrow"></span>
          </a>
          <ul class="sub-menu">
            <c:forEach items="${m.children}" var="c">
              <k:submenu menu="${c}"/>
            </c:forEach>
          </ul>
        </li>
      </c:otherwise>
    </c:choose>
  </c:forEach>
</ul>