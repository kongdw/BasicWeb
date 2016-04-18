var handleMenus = function () {
    /**
     * @param data 为json数据
     * @param parent  为要组合成html的容器
     * @param rootPath 根节点路径
     */
    var url = ctx + "/admin/menus";
    var $menu = $("#menu");
    var addMenus = function (data, parent, rootPath) {
        $.each(data, function (i, m) {
            var liTemplate = '<li><a href="javascript:;"><i class="{icon}"></i>{name}</a></li>';
            var currentPath = ((rootPath ? rootPath + ":" : "" ) + m.name);
            liTemplate = liTemplate.replace("{icon}", (m.icon ? "" : "icon-link")).replace("{name}", m.name);
            var li = $(liTemplate);
            li.find('a').data("path", currentPath);
            if (m.hasChildren) {
                $(li).append('<ul class="sub-menu"></ul>').appendTo(parent);
                addMenus(m.children, $(li).find("> ul.sub-menu").eq(0), currentPath);
            } else {
                $(li).find('a').attr("rel", "address:" + m.url).attr("data-id", m.id);
                $(li).appendTo(parent);
            }
        });
    };
    if ($menu.length > 0) {
        $menu.ajaxJsonUrl(url, function (data) {
            addMenus(data, $menu);
            handleSidebarMenu();
        });
    }
    $.address.init(function () {
        $menu.find('a[rel^=address]').address();
    })
};