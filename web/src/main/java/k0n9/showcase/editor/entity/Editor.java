
package k0n9.showcase.editor.entity;

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
@Table(name = "showcase_editor")
public class Editor extends BaseEntity<Long> {

    @Column(name = "title")
    private String title;

    @Column(name = "content")
    private String content;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
