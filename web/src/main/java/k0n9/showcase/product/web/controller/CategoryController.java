
package k0n9.showcase.product.web.controller;

import k0n9.common.entity.enums.BooleanEnum;
import k0n9.common.entity.search.Searchable;
import k0n9.common.plugin.web.controller.BaseMovableController;
import k0n9.common.web.bind.annotation.PageableDefaults;
import k0n9.showcase.product.entity.Category;
import k0n9.showcase.product.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author David Kong
 * <p>Date: 13-1-28 下午4:29
 * @version 1.0
 */
@Controller
@RequestMapping(value = "/showcase/product/category")
public class CategoryController extends BaseMovableController<Category, Long> {


    public CategoryController() {
        setResourceIdentity("showcase:productCategory");
    }

    @Override
    protected void setCommonData(Model model) {
        model.addAttribute("booleanList", BooleanEnum.values());
    }


    //selectType  multiple single
    @RequestMapping(value = {"select/{selectType}", "select"}, method = RequestMethod.GET)
    @PageableDefaults(sort = "weight=desc")
    public String select(
            Searchable searchable, Model model,
            @PathVariable(value = "selectType") String selectType,
            @MatrixVariable(value = "domId", pathVar = "selectType") String domId,
            @MatrixVariable(value = "domName", pathVar = "selectType", required = false) String domName) {

        this.permissionList.assertHasViewPermission();

        model.addAttribute("selectType", selectType);
        model.addAttribute("domId", domId);
        model.addAttribute("domName", domName);

        super.list(searchable, model);
        return "showcase/product/category/select";
    }
}
