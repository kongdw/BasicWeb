
package k0n9.maintain.notification.repository;

import k0n9.common.repository.BaseRepository;
import k0n9.maintain.notification.entity.NotificationTemplate;
import org.springframework.data.jpa.repository.Query;

/**
 * @author David Kong
 * <p>Date: 13-5-22 下午2:39
 * @version 1.0
 */
public interface NotificationTemplateRepository extends BaseRepository<NotificationTemplate, Long> {

    @Query("from NotificationTemplate o where name=?1")
    NotificationTemplate findByName(String name);
}
