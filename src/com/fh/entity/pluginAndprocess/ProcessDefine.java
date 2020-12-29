package com.fh.entity.pluginAndprocess;

/**
 * 1 *
 * 2 * @Author:w_kiven
 * 3 * @Date:2019/11/7 16:29
 * 4
 */
public class ProcessDefine {
    private String processName;
    private String displayName;
    private String priority;
    private String version;
    private String createTime;
    private String updateTime;
    private String enabled;
    private String defineXml;
    private String group_Id;
    private String EditUrl;
    private String target;

    public String getProcessName() {
        return processName;
    }

    public void setProcessName(String processName) {
        this.processName = processName;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public String getEnabled() {
        return enabled;
    }

    public void setEnabled(String enabled) {
        this.enabled = enabled;
    }

    public String getDefineXml() {
        return defineXml;
    }

    public void setDefineXml(String defineXml) {
        this.defineXml = defineXml;
    }

    public String getGroup_Id() {
        return group_Id;
    }

    public void setGroup_Id(String group_Id) {
        this.group_Id = group_Id;
    }

    public String getEditUrl() {
        return EditUrl;
    }

    public void setEditUrl(String editUrl) {
        EditUrl = editUrl;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }
}
