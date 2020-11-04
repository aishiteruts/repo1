package com.dqh.core.service;

import com.dqh.common.utils.Page;
import com.dqh.core.po.Order;
import com.dqh.core.pojo.ResultNewspaper;
import com.dqh.core.pojo.ResultOrder;

import java.util.List;
import java.util.Map;

public interface OrderService {
    public int createOrder(Order order);

    public int deleteOrderByUserAndNewspaper(Map map);

    public int deleteOrder(Integer orderId);

    public Page<ResultOrder> selectOrderList(Integer page, Integer rows, String newspaperName, String userCode);

    public int selectOrderListCount(ResultOrder resultOrder);
}
