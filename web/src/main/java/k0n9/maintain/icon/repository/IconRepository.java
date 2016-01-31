
package k0n9.maintain.icon.repository;

import k0n9.common.repository.BaseRepository;
import k0n9.maintain.icon.entity.Icon;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:00
 * @version 1.0
 */
public interface IconRepository extends BaseRepository<Icon, Long> {
    Icon findByIdentity(String identity);
}
