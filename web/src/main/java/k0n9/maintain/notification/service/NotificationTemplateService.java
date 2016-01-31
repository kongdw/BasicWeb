
package k0n9.maintain.notification.service;

import k0n9.common.service.BaseService;
import k0n9.maintain.notification.entity.NotificationTemplate;
import k0n9.maintain.notification.repository.NotificationTemplateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author David Kong
 * <p>Date: 13-5-22 下午2:40
 * @version 1.0
 */
@Service
public class NotificationTemplateService extends BaseService<NotificationTemplate, Long> {

    private NotificationTemplateRepository getNotificationTemplateRepository() {
        return (NotificationTemplateRepository) baseRepository;
    }


    public NotificationTemplate findByName(final String name) {
        return getNotificationTemplateRepository().findByName(name);
    }
}
