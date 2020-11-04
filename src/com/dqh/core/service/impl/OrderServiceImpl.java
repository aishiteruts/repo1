package com.dqh.core.service.impl;

import com.dqh.common.utils.Page;
import com.dqh.core.dao.OrderDao;
import com.dqh.core.po.Order;
import com.dqh.core.pojo.ResultOrder;
import com.dqh.core.service.OrderService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
@Transactional
@Service("OrderService")
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDao orderDao;
    @Override
    public int createOrder(Order order) {
        return orderDao.createOrder(order);
    }

    @Override
    public int deleteOrderByUserAndNewspaper(Map map) {
        return orderDao.deleteOrderByUserAndNewspaper(map);
    }

    @Override
    public int deleteOrder(Integer orderId) {
        return orderDao.deleteOrder(orderId);
    }

    @Override
    public Page<ResultOrder> selectOrderList(Integer page, Integer rows, String newspaperName, String userCode) {
        ResultOrder order = new ResultOrder();
        if (StringUtils.isNotBlank(newspaperName)) {
            order.setNewspaperName(newspaperName);
        }
        if (StringUtils.isNotBlank(userCode)) {
            order.setUserCode(userCode);
        }
        // 当前页
        order.setStart((page - 1) * rows);
        // 每页数
        order.setRows(rows);
        List<ResultOrder> orders = orderDao.selectOrderList(order);
        ResultOrder orderForCount = new ResultOrder();
        orderForCount.setUserCode(userCode);
        Integer count = orderDao.selectOrderListCount(orderForCount);
        // 创建Page返回对象
        Page<ResultOrder> result = new Page<>();
        result.setPage(page);
        result.setRows(orders);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public int selectOrderListCount(ResultOrder resultOrder) {
        return orderDao.selectOrderListCount(resultOrder);
    }
}
