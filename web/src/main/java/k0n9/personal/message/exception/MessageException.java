
package k0n9.personal.message.exception;

import k0n9.common.exception.BaseException;

/**
 * @author David Kong
 * <p>Date: 13-5-24 上午7:22
 * @version 1.0
 */
public class MessageException extends BaseException {

    public MessageException(String code, Object[] args) {
        super("personal", code, args);
    }
}
