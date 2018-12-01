package com.neuedu.dao;


import com.neuedu.bean.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderDao {

    /**
     * 查询所有订单
     * @return
     */
    List<Order> listOrder();

    /**
     * 查询订单的数量
     */
    int orderCount();

    /**
     * 根据商品id删除订单
     */
    int deleteOrder(@Param("gid") Integer gid);
}
