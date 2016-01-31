
package k0n9.showcase.status.show.entity;

import k0n9.common.entity.BaseEntity;
import k0n9.common.plugin.entity.Stateable;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

/**
 * @author David Kong
 * <p>Date: 13-2-4 上午9:38
 * @version 1.0
 */
@Entity
@Table(name = "showcase_status_show")
public class Show extends BaseEntity<Long> implements Stateable<Stateable.ShowStatus> {

    /**
     * 标题
     */
    private String name;

    @Enumerated(EnumType.STRING)
    private ShowStatus status;

    public ShowStatus getStatus() {
        return status;
    }

    public void setStatus(ShowStatus status) {
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


}
