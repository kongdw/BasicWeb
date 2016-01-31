
package k0n9.sys.user.exception;

/**
 * @author David Kong
 * <p>Date: 13-3-11 下午8:29
 * @version 1.0
 */
public class UserPasswordRetryLimitExceedException extends UserException {
    public UserPasswordRetryLimitExceedException(int retryLimitCount) {
        super("user.password.retry.limit.exceed", new Object[]{retryLimitCount});
    }
}
