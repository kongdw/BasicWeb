<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form id="searchForm" class="form-inline search-form" data-change-search="true">

    <kform:label path="search.name_like">角色名称</kform:label>
    <kform:input path="search.name_like" cssClass="input-medium" placeholder="模糊查询"/>
    <kform:label path="search.role_like">角色标识</kform:label>
    <kform:input path="search.role_like" cssClass="input-small" placeholder="模糊查询"/>

    &nbsp;&nbsp;
    <input type="submit" class="btn " value="查询"/>
    <a class="btn btn-link btn-clear-search">清空</a>
</form>
