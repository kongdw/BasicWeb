<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="searchForm" class="form-inline search-form" data-change-search="true">


    <kform:label path="search.id_in">编号</kform:label>
    <kform:input path="search.id_in" cssClass="input-medium" placeholder="多个使用空格分隔"/>

    &nbsp;&nbsp;

    <kform:label path="search.weight_gt">权重从</kform:label>
    <kform:input path="search.weight_gt" cssClass="input-small" placeholder="大于"/>

    <kform:label path="search.weight_lt">到</kform:label>
    <kform:input path="search.weight_lt" cssClass="input-small" placeholder="小于"/>


    <button type="submit" class="btn">查询</button>
    <a class="btn btn-link btn-clear-search">清空</a>

</form>
