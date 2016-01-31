
package k0n9.maintain.notification.exception;

import k0n9.common.exception.BaseException;

/**
 * @author David Kong
 * <p>Date: 13-7-8 下午5:32
 * @version 1.0
 */
public class TemplateException extends BaseException {

    public TemplateException(final String code, final Object[] args) {
        super("notification", code, args);
    }
}
