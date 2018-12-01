package com.neuedu.service;

import com.neuedu.bean.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderService {

    /**
     * 查询所有订单
     * @return
     */
    List<Order> listOrder();

}
