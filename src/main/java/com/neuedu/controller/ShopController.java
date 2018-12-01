package com.neuedu.controller;

import com.neuedu.bean.Goods;
import com.neuedu.dao.GoodsDao;
import com.neuedu.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("shop")
@Controller
public class ShopController {
    @Autowired
    private UserDao userDao;
    @Autowired
    private GoodsDao goodsDao;

    @RequestMapping("shophome")
    public String shopHome(Model model){
        List<Goods> goodsList=goodsDao.listGname();
        model.addAttribute("goods",goodsList);
        return "shophome";
    }
    @RequestMapping("home")
    public String home(){
        return "home1";
    }
}
