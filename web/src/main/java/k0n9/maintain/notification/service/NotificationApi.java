
package k0n9.maintain.notification.service;

import k0n9.maintain.notification.exception.TemplateNotFoundException;

import java.util.List;
import java.util.Map;

/**
 * 通知接口
 * @author David Kong
 * <p>Date: 13-7-8 下午5:25
 * @version 1.0
 */
public interface NotificationApi {

    /**
     * 发送通知
     * @param userId 接收人用户编号
     * @param templateName 模板名称
     * @param context 模板需要的数据
     * @throws TemplateNotFoundException 没有找到相应模板
     */
    public void notify(Long userId, String templateName, Map<String, Object> context) throws TemplateNotFoundException;

    /**
     *
     * id :
     * title
     * content
     * date
     *
     * @param userId
     * @return
     */
    public List<Map<String, Object>> topFiveNotification(Long userId);
}
