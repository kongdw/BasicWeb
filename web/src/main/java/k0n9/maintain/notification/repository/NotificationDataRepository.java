
package k0n9.maintain.notification.repository;

import k0n9.common.repository.BaseRepository;
import k0n9.maintain.notification.entity.NotificationData;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
 * @author David Kong
 * <p>Date: 13-5-22 下午2:39
 * @version 1.0
 */
public interface NotificationDataRepository extends BaseRepository<NotificationData, Long> {

    @Modifying
    @Query("update NotificationData o set o.read=true where userId=?1")
    void markReadAll(Long userId);
}
