
package k0n9.showcase.editor.web.controller;

import k0n9.common.web.controller.BaseCRUDController;
import k0n9.showcase.editor.entity.Editor;
import k0n9.showcase.editor.service.EditorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author David Kong
 * <p>Date: 13-1-28 下午4:29
 * @version 1.0
 */
@Controller
@RequestMapping(value = "/showcase/editor")
public class EditorController extends BaseCRUDController<Editor, Long> {

    public EditorController() {
        setResourceIdentity("showcase:editor");
    }

    /**
     * 验证失败返回true
     *
     * @param m
     * @param result
     * @return
     */
    @Override
    protected boolean hasError(Editor m, BindingResult result) {
        Assert.notNull(m);

        return result.hasErrors();
    }


}
