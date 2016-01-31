
package k0n9.common.entity.search.exception;

/**
 *
 * @author David Kong
 * Date:2016-01-01
 * @version 1.0
 */
public final class InvalidSearchPropertyException extends SearchException {

    public InvalidSearchPropertyException(String searchProperty, String entityProperty) {
        this(searchProperty, entityProperty, null);
    }

    public InvalidSearchPropertyException(String searchProperty, String entityProperty, Throwable cause) {
        super("Invalid Search Property [" + searchProperty + "] Entity Property [" + entityProperty + "]", cause);
    }


}
