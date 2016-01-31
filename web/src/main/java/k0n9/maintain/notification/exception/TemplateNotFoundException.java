
package k0n9.maintain.notification.exception;

/**
 * @author David Kong
 * <p>Date: 13-7-8 下午5:34
 * @version 1.0
 */
public class TemplateNotFoundException extends TemplateException {
    public TemplateNotFoundException(String templateName) {
        super("notification.template.not.found", new Object[] {templateName});
    }
}
