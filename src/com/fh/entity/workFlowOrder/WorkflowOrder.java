package com.fh.entity.workFlowOrder;

public class WorkflowOrder {


    private String orderType;//从继承Instruction的三个数据找
    private String taskSerialNumber;//各类任务单流水号

    public String taskPriority;//normal：按正常顺序处理；preference：优先启动处理；urgency：加急处理
    public String taskStatus;//New：该任务单是新增的。Canceled：该任务单被取消，任务单一旦取消，
    // 之后与此任务单相关的信息均可省略StartImmediately：立即启动
    //@XmlJavaTypeAdapter(String2ListXmlAdapter.class)
    public String taskMode;//任务类型
    private String jobTaskID;
    //@XmlJavaTypeAdapter(String2ListXmlAdapter.class)
    private String channelID;
    private String satelliteName;//卫星名
    private String sensorName;
    private Integer orbitNumber;
    public String dataSelectType;
    public String receiveStartTime;
    public String receiveEndTime;
    public String sensorStartTime;
    public String sensorEndTime;

    private String sceneID;
    private String signalID;

    private String productLevel;

    private String out_productdir;



    private String orderStatus;//Ready进入准备状态Hold（任务单处于排队中）；Running（任务单处于执行中）;Aborted（任务单处于放弃状态）；Completed（任务单处于完成状态）
    private String xmltypedata;//任务单内容
    private String startTime;//开始时间
    private String endTime;//结束时间
    private String comment;//备注
    private String oper;//操作员
    private String resampleKernal;
    private String station;//接收站
    private String logName;
    private String logPath;
    private String fileResource;

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public String getTaskSerialNumber() {
        return taskSerialNumber;
    }

    public void setTaskSerialNumber(String taskSerialNumber) {
        this.taskSerialNumber = taskSerialNumber;
    }

    public String getFileResource() {
        return fileResource;
    }

    public void setFileResource(String fileResource) {
        this.fileResource = fileResource;
    }

    public String getJobTaskID() {
        return jobTaskID;
    }

    public void setJobTaskID(String jobTaskID) {
        this.jobTaskID = jobTaskID;
    }

    public String getTaskMode() {
        return taskMode;
    }

    public void setTaskMode(String taskMode) {
        this.taskMode = taskMode;
    }

    public String getChannelID() {
        return channelID;
    }

    public void setChannelID(String channelID) {
        this.channelID = channelID;
    }

    public String getSatelliteName() {
        return satelliteName;
    }

    public void setSatelliteName(String satelliteName) {
        this.satelliteName = satelliteName;
    }

    public String getSensorName() {
        return sensorName;
    }

    public void setSensorName(String sensorName) {
        this.sensorName = sensorName;
    }

    public Integer getOrbitNumber() {
        return orbitNumber;
    }

    public void setOrbitNumber(Integer orbitNumber) {
        this.orbitNumber = orbitNumber;
    }

    public String getSceneID() {
        return sceneID;
    }

    public void setSceneID(String sceneID) {
        this.sceneID = sceneID;
    }

    public String getSignalID() {
        return signalID;
    }

    public void setSignalID(String signalID) {
        this.signalID = signalID;
    }

    public String getProductLevel() {
        return productLevel;
    }

    public void setProductLevel(String productLevel) {
        this.productLevel = productLevel;
    }


    public String getOut_productdir() {
        return out_productdir;
    }

    public void setOut_productdir(String out_productdir) {
        this.out_productdir = out_productdir;
    }

    public String getResampleKernal() {
        return resampleKernal;
    }

    public void setResampleKernal(String resampleKernal) {
        this.resampleKernal = resampleKernal;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getXmltypedata() {
        return xmltypedata;
    }

    public void setXmltypedata(String xmltypedata) {
        this.xmltypedata = xmltypedata;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getOper() {
        return oper;
    }

    public void setOper(String oper) {
        this.oper = oper;
    }

    public String getStation() {
        return station;
    }

    public void setStation(String station) {
        this.station = station;
    }

    public String getLogName() {
        return logName;
    }

    public void setLogName(String logName) {
        this.logName = logName;
    }

    public String getLogPath() {
        return logPath;
    }

    public void setLogPath(String logPath) {
        this.logPath = logPath;
    }

    public String getReceiveStartTime() {
        return receiveStartTime;
    }

    public void setReceiveStartTime(String receiveStartTime) {
        this.receiveStartTime = receiveStartTime;
    }

    public String getReceiveEndTime() {
        return receiveEndTime;
    }

    public void setReceiveEndTime(String receiveEndTime) {
        this.receiveEndTime = receiveEndTime;
    }

    public String getSensorStartTime() {
        return sensorStartTime;
    }

    public void setSensorStartTime(String sensorStartTime) {
        this.sensorStartTime = sensorStartTime;
    }

    public String getSensorEndTime() {
        return sensorEndTime;
    }

    public void setSensorEndTime(String sensorEndTime) {
        this.sensorEndTime = sensorEndTime;
    }

    public String getTaskPriority() {
        return taskPriority;
    }

    public void setTaskPriority(String taskPriority) {
        this.taskPriority = taskPriority;
    }

    public String getTaskStatus() {
        return taskStatus;
    }

    public void setTaskStatus(String taskStatus) {
        this.taskStatus = taskStatus;
    }

    public String getDataSelectType() {
        return dataSelectType;
    }

    public void setDataSelectType(String dataSelectType) {
        this.dataSelectType = dataSelectType;
    }


}
