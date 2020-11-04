package com.dqh.core.dao;

import com.dqh.common.utils.Page;
import com.dqh.core.po.Order;
import com.dqh.core.pojo.ResultOrder;

import java.util.List;
import java.util.Map;

public interface OrderDao {
    public int createOrder(Order order);

    public int deleteOrderByUserAndNewspaper(Map map);

    public int deleteOrder(Integer orderId);

    public List<ResultOrder> selectOrderList(ResultOrder resultOrder);

    public int selectOrderListCount(ResultOrder resultOrder);
}
