package com.fh.entity.processInfo;

public class JobInfo {
    private String jobId;
    private String taskId;
    private String pbsId;
    private String moduleId;
    private String jobResult;
    private String metaPath;
    private String orderFile;
    private String scriptFile;
    private String resultFile;
    private String errFile;
    private String outFile;
    private String node;
    private String status;
    private String createTime;
    private String beginTime;
    private String endTime;
    private String queue;
    private String priority;
    private int cpuNum;
    private int gpuNum;
    private String mem;
    private String wallTime;
    private String nodeNum;

    public String getJobId() {
        return jobId;
    }

    public void setJobId(String jobId) {
        this.jobId = jobId;
    }

    public String getTaskId() {
        return taskId;
    }

    public void setTaskId(String taskId) {
        this.taskId = taskId;
    }

    public String getPbsId() {
        return pbsId;
    }

    public void setPbsId(String pbsId) {
        this.pbsId = pbsId;
    }

    public String getModuleId() {
        return moduleId;
    }

    public void setModuleId(String moduleId) {
        this.moduleId = moduleId;
    }

    public String getJobResult() {
        return jobResult;
    }

    public void setJobResult(String jobResult) {
        this.jobResult = jobResult;
    }

    public String getMetaPath() {
        return metaPath;
    }

    public void setMetaPath(String metaPath) {
        this.metaPath = metaPath;
    }

    public String getOrderFile() {
        return orderFile;
    }

    public void setOrderFile(String orderFile) {
        this.orderFile = orderFile;
    }

    public String getScriptFile() {
        return scriptFile;
    }

    public void setScriptFile(String scriptFile) {
        this.scriptFile = scriptFile;
    }

    public String getResultFile() {
        return resultFile;
    }

    public void setResultFile(String resultFile) {
        this.resultFile = resultFile;
    }

    public String getErrFile() {
        return errFile;
    }

    public void setErrFile(String errFile) {
        this.errFile = errFile;
    }

    public String getOutFile() {
        return outFile;
    }

    public void setOutFile(String outFile) {
        this.outFile = outFile;
    }

    public String getNode() {
        return node;
    }

    public void setNode(String node) {
        this.node = node;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getQueue() {
        return queue;
    }

    public void setQueue(String queue) {
        this.queue = queue;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public int getCpuNum() {
        return cpuNum;
    }

    public void setCpuNum(int cpuNum) {
        this.cpuNum = cpuNum;
    }

    public int getGpuNum() {
        return gpuNum;
    }

    public void setGpuNum(int gpuNum) {
        this.gpuNum = gpuNum;
    }

    public String getMem() {
        return mem;
    }

    public void setMem(String mem) {
        this.mem = mem;
    }

    public String getWallTime() {
        return wallTime;
    }

    public void setWallTime(String wallTime) {
        this.wallTime = wallTime;
    }

    public String getNodeNum() {
        return nodeNum;
    }

    public void setNodeNum(String nodeNum) {
        this.nodeNum = nodeNum;
    }
}
