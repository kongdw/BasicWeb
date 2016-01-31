
package k0n9.sys.user.exception;

/**
 * @author David Kong
 * <p>Date: 13-3-11 下午8:29
 * @version 1.0
 */
public class UserPasswordNotMatchException extends UserException {

    public UserPasswordNotMatchException() {
        super("user.password.not.match", null);
    }
}
