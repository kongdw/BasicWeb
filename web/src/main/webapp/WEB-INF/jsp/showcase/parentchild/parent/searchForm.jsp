<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="searchForm" class="form-inline search-form" data-change-search="true">


    <kform:label path="search.id_in">编号</kform:label>
    <kform:input path="search.id_in" cssClass="input-small" placeholder="多个使用空格分隔"/>
    &nbsp;&nbsp;

    <kform:label path="search.name_like">名称</kform:label>
    <kform:input path="search.name_like" cssClass="input-small" placeholder="模糊匹配"/>

    &nbsp;&nbsp;

    <kform:label path="search.show_eq">是否显示</kform:label>
    <kform:select path="search.show_eq" cssClass="input-small">
        <kform:option label="全部" value=""/>
        <kform:options items="${booleanList}" itemLabel="info"/>
    </kform:select>


    <button type="submit" class="btn ">查询</button>
    <a class="btn btn-link accordion-toggle" data-toggle="collapse" href="#searchMore">高级查询</a>
    <a class="btn btn-link btn-clear-search">清空</a>


    <%--more--%>
    <div id="searchMore" class="accordion-body collapse">
        <div class="accordion-inner">

            <kform:label path="search.beginDate_gte">出生日期从</kform:label>

            <div class="input-append date">
                <kform:input path="search.beginDate_gte" cssClass="input-medium"
                              data-format="yyyy-MM-dd"
                              placeholder="大于等于"/>
                <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"></i></span>
            </div>
            <kform:label path="search.endDate_lte">到</kform:label>
            <div class="input-append date">
                <kform:input path="search.endDate_lte" cssClass="input-medium"
                              data-format="yyyy-MM-dd"
                              data-position="bottom-left"
                              placeholder="小于等于"/>
                <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"></i></span>
            </div>
        </div>
    </div>
</form>