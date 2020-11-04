package com.dqh.core.po;

public class Order {
    private Integer orderId;

    private String userCode;

    private String newspaperCode;

    private Integer orderPortion;

    private Integer orderMonth;

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

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", userCode='" + userCode + '\'' +
                ", newspaperCode='" + newspaperCode + '\'' +
                ", orderPortion=" + orderPortion +
                ", orderMonth=" + orderMonth +
                '}';
    }
}