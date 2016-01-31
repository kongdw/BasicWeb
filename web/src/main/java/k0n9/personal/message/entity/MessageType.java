package k0n9.personal.message.entity;

/**
 * 消息类型
 * @author David Kong
 * <p>Date: 13-5-22 下午1:59
 * @version 1.0
 */
public enum MessageType {
    user_message("普通消息"),
    system_message("系统消息");

    private final String info;

    private MessageType(String info) {
        this.info = info;
    }

    public String getInfo() {
        return info;
    }

    

}
