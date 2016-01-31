
package k0n9.showcase.deleted.service;

import k0n9.common.service.BaseService;
import k0n9.showcase.deleted.entity.DeletedSample;
import k0n9.showcase.deleted.repository.DeletedSampleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:01
 * @version 1.0
 */
@Service
public class DeletedSampleService extends BaseService<DeletedSample, Long> {

    private DeletedSampleRepository getSampleRepository() {
        return (DeletedSampleRepository) baseRepository;
    }

    public DeletedSample findByName(String name) {
        return getSampleRepository().findByName(name);
    }

}
