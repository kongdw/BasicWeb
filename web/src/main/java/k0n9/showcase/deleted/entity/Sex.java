
package k0n9.showcase.deleted.entity;

/**
 * @author David Kong
 * <p>Date: 13-2-4 下午2:48
 * @version 1.0
 */
public enum Sex {
    male("男"), female("女");

    private final String info;

    private Sex(String info) {
        this.info = info;
    }

    public String getInfo() {
        return info;
    }
}
