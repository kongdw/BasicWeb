
package k0n9.showcase.product.service;

import k0n9.common.service.BaseService;
import k0n9.showcase.product.entity.Product;
import k0n9.showcase.product.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:01
 * @version 1.0
 */
@Service
public class ProductService extends BaseService<Product, Long> {

}
