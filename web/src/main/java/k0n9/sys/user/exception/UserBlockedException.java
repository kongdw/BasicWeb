
package k0n9.sys.user.exception;

/**
 * @author David Kong
 * <p>Date: 13-3-11 下午8:29
 * @version 1.0
 */
public class UserBlockedException extends UserException {
    public UserBlockedException(String reason) {
        super("user.blocked", new Object[]{reason});
    }
}
