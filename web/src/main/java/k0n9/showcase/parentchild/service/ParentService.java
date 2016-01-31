
package k0n9.showcase.parentchild.service;

import k0n9.common.service.BaseService;
import k0n9.showcase.parentchild.entity.Child;
import k0n9.showcase.parentchild.entity.Parent;
import k0n9.showcase.parentchild.repository.ParentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:01
 * @version 1.0
 */
@Service
public class ParentService extends BaseService<Parent, Long> {

    @Autowired
    private ChildService childService;


    public void save(Parent parent, List<Child> childList) {
        save(parent);
        saveOrUpdateChild(parent, childList);
    }

    public void update(Parent parent, List<Child> childList) {
        update(parent);
        saveOrUpdateChild(parent, childList);
    }

    private void saveOrUpdateChild(Parent parent, List<Child> childList) {
        for (Child child : childList) {
            if (child == null) {//防止中间有跳过的
                continue;
            }
            child.setParent(parent);
            if (child.getId() == null) {//新的
                childService.save(child);
            } else {
                childService.update(child);
            }
        }
    }
}
