package com.neuedu.controller;

import com.neuedu.bean.Order;
import com.neuedu.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("order")
    public String listorder(Model model, HttpSession session){
        List<Order> orderList=orderService.listOrder();
        model.addAttribute("order",orderList);
        model.addAttribute("auto", session.getAttribute("user"));
        return "order";
    }
}
