
package k0n9.showcase.product.service;

import k0n9.common.plugin.serivce.BaseMovableService;
import k0n9.showcase.product.entity.Category;
import k0n9.showcase.product.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:01
 * @version 1.0
 */
@Service
public class CategoryService extends BaseMovableService<Category, Long> {

}
