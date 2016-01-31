
package k0n9.monitor.web.controller;

import k0n9.common.web.controller.BaseController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author David Kong
 * <p>Date: 13-5-27 下午6:50
 * @version 1.0
 */
@Controller
@RequestMapping("/admin/monitor/jvm")
@RequiresPermissions("monitor:jvm:*")
public class JvmMonitorController extends BaseController {

    @RequestMapping("")
    public String index() {
        return viewName("index");
    }


}
