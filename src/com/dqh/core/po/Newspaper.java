package com.dqh.core.po;

public class Newspaper {

    private Integer newspaperId;

    private String newspaperCode;

    private String newspaperName;

    private String newspaperPublish;

    private Integer newspaperCycle;

    private Float newspaperQuotation;

    private String newspaperBrief;

    private String newspaperClassCode;

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

    public String getNewspaperClassCode() {
        return newspaperClassCode;
    }

    public void setNewspaperClassCode(String newspaperClassCode) {
        this.newspaperClassCode = newspaperClassCode;
    }

    @Override
    public String toString() {
        return "Newspaper{" +
                "newspaperId=" + newspaperId +
                ", newspaperCode='" + newspaperCode + '\'' +
                ", newspaperName='" + newspaperName + '\'' +
                ", newspaperPublish='" + newspaperPublish + '\'' +
                ", newspaperCycle=" + newspaperCycle +
                ", newspaperQuotation=" + newspaperQuotation +
                ", newspaperBrief='" + newspaperBrief + '\'' +
                ", newspaperClassCode='" + newspaperClassCode + '\'' +
                '}';
    }
}