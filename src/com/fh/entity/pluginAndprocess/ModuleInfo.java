package com.fh.entity.pluginAndprocess;

/**
 * 1 *
 * 2 * @Author:w_kiven
 * 3 * @Date:2019/11/5 18:14
 * 4
 */
public class ModuleInfo {
    private int moduleId;
    private String pluginName;
    private String displayName;
    private String publisher;
    private String createTime;
    private String updateTime;
    private String version;
    private String nodeReq;
    private String memReq;
    private String cpuReq;
    private String gpuReq;
    private String wallTime;
    private String executeFile;
    private String queue;

    public int getModuleId() {
        return moduleId;
    }

    public void setModuleId(int moduleId) {
        this.moduleId = moduleId;
    }

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

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
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

    public String getNodeReq() {
        return nodeReq;
    }

    public void setNodeReq(String nodeReq) {
        this.nodeReq = nodeReq;
    }

    public String getMemReq() {
        return memReq;
    }

    public void setMemReq(String memReq) {
        this.memReq = memReq;
    }

    public String getCpuReq() {
        return cpuReq;
    }

    public void setCpuReq(String cpuReq) {
        this.cpuReq = cpuReq;
    }

    public String getGpuReq() {
        return gpuReq;
    }

    public void setGpuReq(String gpuReq) {
        this.gpuReq = gpuReq;
    }

    public String getWallTime() {
        return wallTime;
    }

    public void setWallTime(String wallTime) {
        this.wallTime = wallTime;
    }

    public String getExecuteFile() {
        return executeFile;
    }

    public void setExecuteFile(String executeFile) {
        this.executeFile = executeFile;
    }

    public String getQueue() {
        return queue;
    }

    public void setQueue(String queue) {
        this.queue = queue;
    }
}
