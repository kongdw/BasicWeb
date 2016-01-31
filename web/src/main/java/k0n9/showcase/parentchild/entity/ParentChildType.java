package k0n9.showcase.parentchild.entity;

/**
 * 父子表测试使用的enum
 * @author David Kong
 * <p>Date: 13-2-19 下午2:30
 * @version 1.0
 */
public enum ParentChildType {
    type1("测试类型1"), type2("测试类型2");

    private final String info;

    private ParentChildType(String info) {
        this.info = info;
    }

    public String getInfo() {
        return info;
    }
}
