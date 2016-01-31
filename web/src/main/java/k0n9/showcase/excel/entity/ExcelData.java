
package k0n9.showcase.excel.entity;

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
@Table(name = "showcase_excel_data")
public class ExcelData extends BaseEntity<Long> {

    @Column(name = "content")
    private String content;

    public String getContent() {
        return content;
    }

    public void setContent(final String content) {
        this.content = content;
    }
}
