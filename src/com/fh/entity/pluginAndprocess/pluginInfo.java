package com.fh.entity.pluginAndprocess;

/**
 * 1 *
 * 2 * @Author:w_kiven
 * 3 * @Date:2019/11/5 10:58
 * 4
 */
public class pluginInfo {
    public String pluginName;
    public String displayName;
    public String templateXml;
    public String createTime;
    public String updateTime;
    public String version;
    public String enabled;
    public String group_Id;
    public int defaultModuleId;
    public ModuleInfo moduleInfo;
    public String editUrl;
    private String target;


    public String getPluginName() {
        return pluginName;
    }

    public void setPluginName(String pluginName) {
        this.pluginName = pluginName;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getTemplateXml() {
        return templateXml;
    }

    public void setTemplateXml(String templateXml) {
        this.templateXml = templateXml;
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

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getEnabled() {
        return enabled;
    }

    public void setEnabled(String enabled) {
        this.enabled = enabled;
    }

    public int getDefaultModuleId() {
        return defaultModuleId;
    }

    public void setDefaultModuleId(int defaultModuleId) {
        this.defaultModuleId = defaultModuleId;
    }

    public String getGroup_Id() {
        return group_Id;
    }

    public void setGroup_Id(String group_Id) {
        this.group_Id = group_Id;
    }

    public ModuleInfo getModuleInfo() {
        return moduleInfo;
    }

    public void setModuleInfo(ModuleInfo moduleInfo) {
        this.moduleInfo = moduleInfo;
    }

    public String getEditUrl() {
        return editUrl;
    }

    public void setEditUrl(String editUrl) {
        this.editUrl = editUrl;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }
}
