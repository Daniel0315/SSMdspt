package com.neuedu.service.impl;

import com.neuedu.bean.Goods;
import com.neuedu.bean.Order;
import com.neuedu.bean.User;
import com.neuedu.dao.GoodsDao;
import com.neuedu.dao.OrderDao;
import com.neuedu.dao.UserDao;
import com.neuedu.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDao orderDao;
    @Autowired
    private UserDao userDao;
    @Autowired
    private GoodsDao goodsDao;

    @Override
    public List<Order> listOrder() {
        List<Order> orderList=orderDao.listOrder();
        List<User> userList=userDao.listUser();
        List<Goods> goodsList=goodsDao.listGname();
        for (Order order : orderList) {
            for (User user : userList) {
                if (order.getUid().equals(user.getUid())){
                    order.setUser(user);
                }
            }
        }

        for (Order order : orderList) {
            for (Goods goods : goodsList) {
                if (order.getGid().equals(goods.getGid())){
                    order.setGoods(goods);
                }
            }
        }

        return orderList;
    }

}
