
package k0n9.sys.resource.web.controller;

import k0n9.common.Constants;
import k0n9.common.plugin.web.controller.BaseTreeableController;
import k0n9.sys.resource.entity.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * @author David Kong
 * <p>Date: 13-1-28 下午4:29
 * @version 1.0
 */
@Controller
@RequestMapping(value = "/admin/sys/resource")
public class ResourceController extends BaseTreeableController<Resource, Long> {

    public ResourceController() {
        setResourceIdentity("sys:resource");
    }

    @RequestMapping(value = "/changeStatus/{newStatus}")
    public String changeStatus(
            HttpServletRequest request,
            @PathVariable("newStatus") Boolean newStatus,
            @RequestParam("ids") Long[] ids,
            RedirectAttributes redirectAttributes
    ) {

        this.permissionList.assertHasUpdatePermission();

        for (Long id : ids) {
            Resource resource = baseService.findOne(id);
            resource.setShow(newStatus);
            baseService.update(resource);
        }

        redirectAttributes.addFlashAttribute(Constants.MESSAGE, "操作成功！");

        return "redirect:" + request.getAttribute(Constants.BACK_URL);
    }

}
