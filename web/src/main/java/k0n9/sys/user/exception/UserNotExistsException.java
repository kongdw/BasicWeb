
package k0n9.sys.user.exception;


/**
 * @author David Kong
 * <p>Date: 13-3-11 下午8:28
 * @version 1.0
 */
public class UserNotExistsException extends UserException {

    public UserNotExistsException() {
        super("user.not.exists", null);
    }
}
