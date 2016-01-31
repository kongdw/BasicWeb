
package k0n9.sys.user.repository;

import k0n9.common.repository.BaseRepository;
import k0n9.sys.user.entity.UserLastOnline;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:00
 * @version 1.0
 */
public interface UserLastOnlineRepository extends BaseRepository<UserLastOnline, Long> {

    UserLastOnline findByUserId(Long userId);
}
