
package k0n9.personal.calendar.service;

import k0n9.common.service.BaseService;
import k0n9.personal.calendar.entity.Calendar;
import k0n9.personal.calendar.repository.CalendarRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Time;
import java.util.Date;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午3:01
 * @version 1.0
 */
@Service
public class CalendarService extends BaseService<Calendar, Long> {

    private CalendarRepository getCalendarRepository() {
        return (CalendarRepository) baseRepository;
    }

    public void copyAndRemove(Calendar calendar) {
        delete(calendar);

        Calendar copyCalendar = new Calendar();
        BeanUtils.copyProperties(calendar, copyCalendar);
        copyCalendar.setId(null);
        save(copyCalendar);
    }

    //2013 10 11   10-20   -3 > now
    //     10 11  10-19
    public Long countRecentlyCalendar(Long userId, Integer interval) {
        Date nowDate = new Date();
        Date nowTime = new Time(nowDate.getHours(), nowDate.getMinutes(), nowDate.getSeconds());
        nowDate.setHours(0);
        nowDate.setMinutes(0);
        nowDate.setSeconds(0);

        return getCalendarRepository().countRecentlyCalendar(userId, nowDate, nowTime, interval);
    }
}
