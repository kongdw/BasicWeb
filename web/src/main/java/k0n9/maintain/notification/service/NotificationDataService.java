
package k0n9.maintain.notification.service;

import k0n9.common.service.BaseService;
import k0n9.maintain.notification.entity.NotificationData;
import k0n9.maintain.notification.repository.NotificationDataRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author David Kong
 * <p>Date: 13-5-22 下午2:40
 * @version 1.0
 */
@Service
public class NotificationDataService extends BaseService<NotificationData, Long> {

    private NotificationDataRepository getNotificationDataRepository() {
        return (NotificationDataRepository) baseRepository;
    }


    public void markReadAll(final Long userId) {
        getNotificationDataRepository().markReadAll(userId);
    }


    public void markRead(final Long notificationId) {
        NotificationData data = findOne(notificationId);
        if(data == null || data.getRead().equals(Boolean.TRUE)) {
            return;
        }
        data.setRead(Boolean.TRUE);
        update(data);
    }
}
