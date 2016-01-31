
package k0n9.sys.user.web.controller;

import k0n9.common.web.controller.BaseCRUDController;
import k0n9.sys.user.entity.UserStatus;
import k0n9.sys.user.entity.UserStatusHistory;
import k0n9.sys.user.service.UserStatusHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author David Kong
 * <p>Date: 13-1-28 下午4:29
 * @version 1.0
 */
@Controller
@RequestMapping(value = "/admin/sys/user/statusHistory")
public class UserStatusHistoryController extends BaseCRUDController<UserStatusHistory, Long> {

    public UserStatusHistoryController() {
        setListAlsoSetCommonData(true);
        setResourceIdentity("sys:userStatusHistory");
    }


    @Override
    protected void setCommonData(Model model) {
        model.addAttribute("statusList", UserStatus.values());
    }

}
