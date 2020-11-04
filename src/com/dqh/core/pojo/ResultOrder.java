package com.dqh.core.pojo;

public class ResultOrder {
    private Integer orderId;

    private String userCode;

    private String newspaperCode;

    private String newspaperName;

    private Integer orderPortion;

    private Integer orderMonth;

    private Integer start;          // 起始行

    private Integer rows;           // 所取行数

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
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

    public Integer getOrderPortion() {
        return orderPortion;
    }

    public void setOrderPortion(Integer orderPortion) {
        this.orderPortion = orderPortion;
    }

    public Integer getOrderMonth() {
        return orderMonth;
    }

    public void setOrderMonth(Integer orderMonth) {
        this.orderMonth = orderMonth;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    @Override
    public String toString() {
        return "ResultOrder{" +
                "orderId=" + orderId +
                ", userCode='" + userCode + '\'' +
                ", newspaperCode='" + newspaperCode + '\'' +
                ", newspaperName='" + newspaperName + '\'' +
                ", orderPortion=" + orderPortion +
                ", orderMonth=" + orderMonth +
                ", start=" + start +
                ", rows=" + rows +
                '}';
    }
}
