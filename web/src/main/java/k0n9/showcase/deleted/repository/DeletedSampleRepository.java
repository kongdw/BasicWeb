
package k0n9.showcase.deleted.repository;

import k0n9.common.repository.BaseRepository;
import k0n9.showcase.deleted.entity.DeletedSample;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:00
 * @version 1.0
 */
public interface DeletedSampleRepository extends BaseRepository<DeletedSample, Long> {

    DeletedSample findByName(String name);

}
