
package k0n9.showcase.sample.service;

import k0n9.common.service.BaseService;
import k0n9.showcase.sample.entity.Sample;
import k0n9.showcase.sample.repository.SampleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:01
 * @version 1.0
 */
@Service
public class SampleService extends BaseService<Sample, Long> {

    private SampleRepository getSampleRepository() {
        return (SampleRepository) baseRepository;
    }


    public Sample findByName(String name) {
        return getSampleRepository().findByName(name);
    }

}
