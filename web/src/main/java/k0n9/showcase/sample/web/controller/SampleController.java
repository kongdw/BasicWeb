
package k0n9.showcase.sample.web.controller;

import k0n9.common.entity.enums.BooleanEnum;
import k0n9.common.entity.search.Searchable;
import k0n9.common.web.bind.annotation.PageableDefaults;
import k0n9.common.web.controller.BaseCRUDController;
import k0n9.common.web.validate.ValidateResponse;
import k0n9.showcase.sample.entity.Sample;
import k0n9.showcase.sample.entity.Sex;
import k0n9.showcase.sample.service.SampleService;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

/**
 * @author David Kong
 *         <p>Date: 13-1-28 下午4:29
 * @version 1.0
 */
@Controller
@RequestMapping(value = "/showcase/sample")
public class SampleController extends BaseCRUDController<Sample, Long> {

    private SampleService getSampleService() {
        return (SampleService) baseService;
    }

    public SampleController() {
        setResourceIdentity("showcase:sample");
    }

    @Override
    protected void setCommonData(Model model) {
        model.addAttribute("sexList", Sex.values());
        model.addAttribute("booleanList", BooleanEnum.values());
    }

    /**
     * 验证失败返回true
     *
     * @param m
     * @param result
     * @return
     */
    @Override
    protected boolean hasError(Sample m, BindingResult result) {
        Assert.notNull(m);

        //字段错误 前台使用<es:showFieldError commandName="showcase/sample"/> 显示
        if (m.getBirthday() != null && m.getBirthday().after(new Date())) {
            //前台字段名（前台使用[name=字段名]取得dom对象） 错误消息键。。
            result.rejectValue("birthday", "birthday.past");
        }

        //全局错误 前台使用<es:showGlobalError commandName="showcase/sample"/> 显示
        if (m.getName().contains("admin")) {
            result.reject("name.must.not.admin");
        }

        return result.hasErrors();
    }

    /**
     * 验证返回格式
     * 单个：[fieldId, 1|0, msg]
     * 多个：[[fieldId, 1|0, msg],[fieldId, 1|0, msg]]
     *
     * @param fieldId
     * @param fieldValue
     * @return
     */
    @RequestMapping(value = "validate", method = RequestMethod.GET)
    @ResponseBody
    public Object validate(
            @RequestParam("fieldId") String fieldId, @RequestParam("fieldValue") String fieldValue,
            @RequestParam(value = "id", required = false) Long id) {
        ValidateResponse response = ValidateResponse.newInstance();

        if ("name".equals(fieldId)) {
            Sample sample = getSampleService().findByName(fieldValue);
            if (sample == null || (sample.getId().equals(id) && sample.getName().equals(fieldValue))) {
                //如果msg 不为空 将弹出提示框
                response.validateSuccess(fieldId, "");
            } else {
                response.validateFail(fieldId, "该名称已被其他人使用");
            }
        }
        return response.result();
    }

    @RequestMapping(value = "tabs", method = RequestMethod.GET)
    @PageableDefaults(sort = "id=desc")
    public String tabs(Searchable searchable, Model model) {

        if (permissionList != null) {
            this.permissionList.assertHasViewPermission();
        }
        return viewName("tabs");
    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    @PageableDefaults(sort = "id=desc")
    @ResponseBody
    public Page<Sample> findByPage(Searchable searchable) {
        return baseService.findAll(searchable);
    }
}
