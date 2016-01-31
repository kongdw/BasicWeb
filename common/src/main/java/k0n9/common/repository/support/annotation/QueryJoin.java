package k0n9.common.repository.support.annotation;

import javax.persistence.criteria.JoinType;
import java.lang.annotation.*;

/**
 * @author David Kong
 * <p>Date: 13-10-18
 * @version 1.0
 */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface QueryJoin {

    /**
     * 连接的名字
     *
     * @return
     */
    String property();

    JoinType joinType();

}
