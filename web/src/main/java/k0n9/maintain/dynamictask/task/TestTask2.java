package k0n9.maintain.dynamictask.task;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

/**
 * @author David Kong
 * <p>Date: 14-1-18
 * @version 1.0
 */
public class TestTask2 {

    @Autowired
    private ApplicationContext ctx;

    public void run() {
        System.out.println("====hello test task2::" + ctx);
    }
}
