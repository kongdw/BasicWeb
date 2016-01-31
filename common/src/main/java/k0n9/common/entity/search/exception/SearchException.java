
package k0n9.common.entity.search.exception;

import org.springframework.core.NestedRuntimeException;

/**
 *
 * @author David Kong
 * Date:2016-01-01
 * @version 1.0
 */
public class SearchException extends NestedRuntimeException {

    public SearchException(String msg) {
        super(msg);
    }

    public SearchException(String msg, Throwable cause) {
        super(msg, cause);
    }
}
