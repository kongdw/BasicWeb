
package k0n9.sys.user.exception;

import k0n9.common.exception.BaseException;

/**
 * @author David Kong
 * <p>Date: 13-3-11 下午8:19
 * @version 1.0
 */
public class UserException extends BaseException {

    public UserException(String code, Object[] args) {
        super("user", code, args, null);
    }

}
