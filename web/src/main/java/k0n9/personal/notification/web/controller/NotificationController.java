
package k0n9.personal.notification.web.controller;

import k0n9.common.entity.search.SearchOperator;
import k0n9.common.entity.search.Searchable;
import k0n9.common.web.bind.annotation.PageableDefaults;
import k0n9.common.web.controller.BaseController;
import k0n9.maintain.notification.entity.NotificationData;
import k0n9.maintain.notification.service.NotificationDataService;
import k0n9.sys.user.entity.User;
import k0n9.sys.user.web.bind.annotation.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author David Kong
 * <p>Date: 13-7-9 下午2:01
 * @version 1.0
 */
@Controller
@RequestMapping("/admin/personal/notification")
public class NotificationController extends BaseController {

    @Autowired
    private NotificationDataService notificationDataService;

    @RequestMapping
    @PageableDefaults(value = 20, sort = "id=desc")
    public String list(@CurrentUser User user, Pageable pageable, Model model) {

        Searchable searchable = Searchable.newSearchable();
        searchable.addSearchFilter("userId", SearchOperator.eq, user.getId());

        Page<NotificationData> page = notificationDataService.findAll(pageable);

        model.addAttribute("page", page);
        if(pageable.getPageNumber() == 0) {
            notificationDataService.markReadAll(user.getId());
        }

        return viewName("list");
    }

    @RequestMapping("/markRead")
    @ResponseBody
    public String markRead(@RequestParam("id") Long id) {
        notificationDataService.markRead(id);
        return "";
    }

}
