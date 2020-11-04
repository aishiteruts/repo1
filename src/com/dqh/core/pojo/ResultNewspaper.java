package com.dqh.core.pojo;

public class ResultNewspaper {
    private Integer newspaperId;

    private String newspaperCode;

    private String newspaperName;

    private String newspaperPublish;

    private Integer newspaperCycle;

    private Float newspaperQuotation;

    private String newspaperBrief;

    private Integer newspaperClassId;

    private String newspaperClassCode;

    private String newspaperClassName;

    private Integer start;          // 起始行

    private Integer rows;           // 所取行数

    public void setStart(Integer start) {
        this.start = start;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public Integer getNewspaperId() {
        return newspaperId;
    }

    public void setNewspaperId(Integer newspaperId) {
        this.newspaperId = newspaperId;
    }

    public String getNewspaperCode() {
        return newspaperCode;
    }

    public void setNewspaperCode(String newspaperCode) {
        this.newspaperCode = newspaperCode;
    }

    public String getNewspaperName() {
        return newspaperName;
    }

    public void setNewspaperName(String newspaperName) {
        this.newspaperName = newspaperName;
    }

    public String getNewspaperPublish() {
        return newspaperPublish;
    }

    public void setNewspaperPublish(String newspaperPublish) {
        this.newspaperPublish = newspaperPublish;
    }

    public Integer getNewspaperCycle() {
        return newspaperCycle;
    }

    public void setNewspaperCycle(Integer newspaperCycle) {
        this.newspaperCycle = newspaperCycle;
    }

    public Float getNewspaperQuotation() {
        return newspaperQuotation;
    }

    public void setNewspaperQuotation(Float newspaperQuotation) {
        this.newspaperQuotation = newspaperQuotation;
    }

    public String getNewspaperBrief() {
        return newspaperBrief;
    }

    public void setNewspaperBrief(String newspaperBrief) {
        this.newspaperBrief = newspaperBrief;
    }

    public Integer getNewspaperClassId() {
        return newspaperClassId;
    }

    public void setNewspaperClassId(Integer newspaperClassId) {
        this.newspaperClassId = newspaperClassId;
    }

    public String getNewspaperClassCode() {
        return newspaperClassCode;
    }

    public void setNewspaperClassCode(String newspaperClassCode) {
        this.newspaperClassCode = newspaperClassCode;
    }

    public String getNewspaperClassName() {
        return newspaperClassName;
    }

    public void setNewspaperClassName(String newspaperClassName) {
        this.newspaperClassName = newspaperClassName;
    }

    @Override
    public String toString() {
        return "ResultNewspaper{" +
                "newspaperId=" + newspaperId +
                ", newspaperCode='" + newspaperCode + '\'' +
                ", newspaperName='" + newspaperName + '\'' +
                ", newspaperPublish='" + newspaperPublish + '\'' +
                ", newspaperCycle=" + newspaperCycle +
                ", newspaperQuotation=" + newspaperQuotation +
                ", newspaperBrief='" + newspaperBrief + '\'' +
                ", newspaperClassId=" + newspaperClassId +
                ", newspaperClassCode='" + newspaperClassCode + '\'' +
                ", newspaperClassName='" + newspaperClassName + '\'' +
                ", start=" + start +
                ", rows=" + rows +
                '}';
    }
}