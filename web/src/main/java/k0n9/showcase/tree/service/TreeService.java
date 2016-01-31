
package k0n9.showcase.tree.service;

import k0n9.common.plugin.serivce.BaseTreeableService;
import k0n9.showcase.tree.entity.Tree;
import k0n9.showcase.tree.repository.TreeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:01
 * @version 1.0
 */
@Service
public class TreeService extends BaseTreeableService<Tree, Long> {

}
