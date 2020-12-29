package com.fh.entity.shellInfo;

/**
 * Description: FH-WEB3
 * <p>
 *     可以通过界面控制脚本来进行启停
 * Created by w_kiven on 2020-08-11 17:17
 */
public class shellInfo {
    public String id;
    public String start_shell;
    public String stop_shell;
    public String ip_number;
    public String user_name;
    public String password_id;
    public String comment;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getStart_shell() {
        return start_shell;
    }

    public void setStart_shell(String start_shell) {
        this.start_shell = start_shell;
    }

    public String getStop_shell() {
        return stop_shell;
    }

    public void setStop_shell(String stop_shell) {
        this.stop_shell = stop_shell;
    }

    public String getIp_number() {
        return ip_number;
    }

    public void setIp_number(String ip_number) {
        this.ip_number = ip_number;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPassword_id() {
        return password_id;
    }

    public void setPassword_id(String password_id) {
        this.password_id = password_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
