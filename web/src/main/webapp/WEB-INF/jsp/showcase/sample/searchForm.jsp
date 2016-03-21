<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form class="form form-inline search-form" data-change-search="true">
  <div class="form-body">
    <div class="row">
      <div class="col-md-12">
        <div class="form-group" style="margin-left: 5px;">
          <kform:label path="search.id_in" cssClass="control-label">编号:</kform:label>
          <kform:input path="search.id_in" cssClass="form-control input-sm" placeholder="多个使用空格分隔"/>
        </div>
        <div class="form-group" style="margin-left: 20px;">
          <%--<input type="text" id="search.id_in" name="search.id_in" value="${param['search.id_in']}"  />--%>
          <kform:label path="search.age_gt">年龄:</kform:label>
          <kform:input path="search.age_gt" cssClass="form-control input-sm" placeholder="大于"/>
          <kform:label path="search.age_lt">到</kform:label>
          <kform:input path="search.age_lt" cssClass="form-control input-sm" placeholder="小于"/>
        </div>
        <div class="btn-group pull-right">
          <a class="btn btn-search">
            <i class="icon-magnifier"></i>
            查询
          </a>
          <a class="btn accordion-toggle" data-toggle="collapse" href="#searchMore">
            <i class="icon-magnifier-add"></i>
            高级查询
          </a>
          <a class="btn btn-clear-search">
            <i class="icon-action-undo"></i>
            清空
          </a>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div id="searchMore" class="collapse">
          <div class="form-group" style="margin-left: 5px;">
            <kform:label path="search.birthday_gte">出生日期从:</kform:label>
            <kform:input path="search.birthday_gte" cssClass="input-sm form-control date date-picker"
                         data-format="yyyy-MM-dd hh:mm:ss"
                         data-position="bottom-left"
                         placeholder="大于等于"/>
            <kform:label path="search.birthday_lte">到</kform:label>
            <kform:input path="search.birthday_lte" cssClass="input-sm form-control date date-picker"
                         data-format="yyyy-MM-dd hh:mm:ss"
                         data-position="bottom-left"
                         placeholder="小于等于"/>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%--more--%>
</form>
