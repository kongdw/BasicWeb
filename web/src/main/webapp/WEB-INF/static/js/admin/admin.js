$.menus = {
    initMenu: function () {
        /**
         * @param data 为json数据
         * @param parent  为要组合成html的容器
         * @param rootPath 根节点路径
         */
        var url = ctx + "/admin/menus";
        var $menu = $("#nav");
        var addMenus = function (data, parent, rootPath) {
            $.each(data, function (i, m) {
                var liTemplate = '<li><a href="javascript:;" data-path="{rootPath}"><i class="{icon}"></i>{name}</a></li>';
                var currentPath = ((rootPath ? rootPath + ":" : "" ) + m.name);
                liTemplate = liTemplate.replace("{rootPath}", currentPath).replace("{icon}", (m.icon ? "" : "icon-link")).replace("{name}", m.name);
                var li = $(liTemplate);
                /** @namespace m.hasChildren */
                if (m.hasChildren) {
                    //$(li).find('a').append('<i class="arrow icon-angle-left"></i>');
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
            });
        }

    }
};
$.tabs = {
    tabs: null,
    tabsBarContainer: $(".page-tabs-bar"),
    tabsContentContainer: $(".page-tabs-content"),
    pageBreadcrumb: $(".page-breadcrumb"),
    addOrActivePlan: function (url, path) {
        /**
         * 更新面包屑
         * @param path
         */
        url = decodeURI(url);
        var ajaxUrl = ctx + url;
        var updateBreadcrumb = function (path) {
            var pageBreadcrumb = $.tabs.pageBreadcrumb;
            if (pageBreadcrumb.length > 0) {
                var m = "";
                var splitPath = path.split(":");
                pageBreadcrumb.find("> li:not(.btn-group)").remove();
                $.each(splitPath, function (i, text) {
                    if (i < splitPath.length - 1) {
                        m += '<li><i class="fa fa-angle-right"></i> ' + text + " </li>";
                    } else {
                        m += '<li><i class="fa fa-angle-right"></i> <a href="javascript:;">' + text + '</a> </li>';
                    }
                });
                pageBreadcrumb.append(m);
            }
        };
        updateBreadcrumb(path);
        var tabContent = $.tabs.tabsContentContainer.find("> div[data-url='" + ajaxUrl + "']");
        if (tabContent.length == 0) {
            tabContent = $('<div id="tab" data-url="' + ajaxUrl + '" class="tab-pane active"></div>').appendTo($.tabs.tabsContentContainer);
            tabContent.ajaxGetUrl(ajaxUrl);
        } else {
            tabContent.show()
        }
        $.tabs.tabsContentContainer.find("> div").not(tabContent).hide();
        //$.tabs.initTabBar();
        var tabBar = $.tabs.tabsBarContainer.find("> ul > li > a[data-url='" + ajaxUrl + "']");
        if (tabBar.length == 0) {
            var names = path.split(":");
            var name = names[names.length - 1];
            tabBar = $('<li class="active"> <a data-url="' + ajaxUrl + '">' + name + ' </a> </li>').appendTo($.tabs.tabsBarContainer.find("> ul"));
            $.tabs.tabsBarContainer.find("> ul > li").not(tabBar).removeClass("active");
            tabBar.find("a").closest("li").click(function(){
                $.tabs.addOrActivePlan(ajaxUrl,path);
                return false;
            })
            //$.tabs.initTabBar();
        }else{
            $.tabs.tabsBarContainer.find("> ul > li").not(tabBar).removeClass("active");
            tabBar.parent("li").addClass("active");
        }
    },
};
var AdminGlobal = function () {
    var myHomeUrl = "/admin/welcome";
    $.address.change(function (data) {
        var a = $('.page-sidebar li > a[rel^="address:' + data.value + '"]');
        if (data.value == "/") {
            $.tabs.addOrActivePlan(myHomeUrl, "我的主页")
        } else {
            if (a.size() > 0) {
                $.tabs.addOrActivePlan(a.attr("rel").replace("address:", ""), a.attr("data-path"));
                var p = $(".page-sidebar-menu").find("li");
                p.removeClass("active").removeClass("open");
                p.find('span').remove(".selected");
                var parentLi = a.parent("li");
                parentLi.addClass("active");
                var ul = parentLi.closest("ul.sub-menu");
                while (ul.size() > 0) {
                    var k = ul.parent("li");
                    k.addClass("active");
                    k.addClass("open");
                    k.find(" > a > span.arrow").addClass("open");
                    k.find("> a").append('<span class="selected"></span>');
                    ul = k.closest("ul.sub-menu")
                }
            } else {
                var n = window.location.hash;
                if (n != "" && !Util.startWith(n, "#/")) {
                    return false
                }
                $.tabs.addOrActivePlan(data.value)
            }
        }
    });

    return {
        init: function () {
            $.menus.initMenu();
        }
    }
}();