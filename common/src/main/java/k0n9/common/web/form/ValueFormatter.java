
package k0n9.common.web.form;

import org.springframework.util.ObjectUtils;
import org.springframework.web.util.HtmlUtils;

/**
 * @author David Kong
 * <p>Date: 13-3-28 下午5:14
 * @version 1.0
 */
public class ValueFormatter {
    public static String getDisplayString(Object value, boolean htmlEscape) {
        String displayValue = ObjectUtils.getDisplayString(value);
        return (htmlEscape ? HtmlUtils.htmlEscape(displayValue) : displayValue);
    }
}
