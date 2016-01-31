
package k0n9.sys.group.entity;

/**
 * 用户组分类
 * @author David Kong
 * <p>Date: 13-4-19 上午8:57
 * @version 1.0
 */
public enum GroupType {

    user("用户组"), organization("组织机构组");

    private final String info;

    private GroupType(String info) {
        this.info = info;
    }

    public String getInfo() {
        return info;
    }
}
