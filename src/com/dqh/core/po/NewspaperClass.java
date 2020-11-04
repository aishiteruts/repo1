package com.dqh.core.po;

public class NewspaperClass {
    private Integer newspaperClassId;

    private String newspaperClassCode;

    private String newspaperClassName;

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
        return "NewspaperClass{" +
                "newspaperClassId=" + newspaperClassId +
                ", newspaperClassCode='" + newspaperClassCode + '\'' +
                ", newspaperClassName='" + newspaperClassName + '\'' +
                '}';
    }
}