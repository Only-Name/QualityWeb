package com.fh.entity.pluginAndprocess;

import java.util.List;

/**
 * 1 *
 * 2 * @Author:w_kiven
 * 3 * @Date:2019/11/5 10:57
 * 4
 */
public class groupInfo {
    public String groupId;
    public String groupName;
    public String enabled;
    public List<pluginInfo> pluginInfo;
    public List<ProcessDefine>processDefine;
    private String target;
    private String editUrl;

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getEnabled() {
        return enabled;
    }

    public void setEnabled(String enabled) {
        this.enabled = enabled;
    }

    public List<com.fh.entity.pluginAndprocess.pluginInfo> getPluginInfo() {
        return pluginInfo;
    }

    public void setPluginInfo(List<com.fh.entity.pluginAndprocess.pluginInfo> pluginInfo) {
        this.pluginInfo = pluginInfo;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public String getEditUrl() {
        return editUrl;
    }

    public void setEditUrl(String editUrl) {
        this.editUrl = editUrl;
    }

    public List<ProcessDefine> getProcessDefine() {
        return processDefine;
    }

    public void setProcessDefine(List<ProcessDefine> processDefine) {
        this.processDefine = processDefine;
    }
}
