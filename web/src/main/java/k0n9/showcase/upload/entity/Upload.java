
package k0n9.showcase.upload.entity;

import k0n9.common.entity.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * @author David Kong
 * <p>Date: 13-2-4 上午9:38
 * @version 1.0
 */
@Entity
@Table(name = "showcase_upload")
public class Upload extends BaseEntity<Long> {

    @Column(name = "name")
    private String name;

    @Column(name = "src")
    private String src;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }
}
