
package k0n9.sys.organization.service;

import k0n9.common.plugin.serivce.BaseTreeableService;
import k0n9.sys.organization.entity.Organization;
import k0n9.sys.organization.repository.OrganizationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Iterator;
import java.util.Set;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:01
 * @version 1.0
 */
@Service
public class OrganizationService extends BaseTreeableService<Organization, Long> {

    /**
     * 过滤仅获取可显示的数据
     *
     * @param organizationIds
     * @param organizationJobIds
     */
    public void filterForCanShow(Set<Long> organizationIds, Set<Long[]> organizationJobIds) {

        Iterator<Long> iter1 = organizationIds.iterator();

        while (iter1.hasNext()) {
            Long id = iter1.next();
            Organization o = findOne(id);
            if (o == null || Boolean.FALSE.equals(o.getShow())) {
                iter1.remove();
            }
        }

        Iterator<Long[]> iter2 = organizationJobIds.iterator();

        while (iter2.hasNext()) {
            Long id = iter2.next()[0];
            Organization o = findOne(id);
            if (o == null || Boolean.FALSE.equals(o.getShow())) {
                iter2.remove();
            }
        }

    }
}
