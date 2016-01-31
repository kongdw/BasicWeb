
package k0n9.showcase.upload.repository;

import k0n9.common.repository.BaseRepository;
import k0n9.showcase.upload.entity.Upload;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:00
 * @version 1.0
 */
public interface UploadRepository extends BaseRepository<Upload, Long> {

    Upload findByName(String name);

}
