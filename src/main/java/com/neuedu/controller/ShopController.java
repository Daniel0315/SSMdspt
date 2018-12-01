package com.neuedu.controller;

import com.neuedu.bean.User;
import com.neuedu.dao.UserDao;
import com.neuedu.dto.AuthorityDto;
import com.neuedu.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("shop")
@Controller
public class ShopController {
    @Autowired
    private UserDao userDao;

   /* @RequestMapping("/loginview")
    public String loginView(){
        return "login";
    }


    @ResponseBody
    @PostMapping("/login")
    public Result login(String username, String password){
        User user=userDao.login(username);
        if (user!=null){
            if(user.getUpwd().equals(password)){
                //登录成功
                return Result.LOGIN_SUCCESS;
            }
            //密码错误
            return Result.ERROR_PASSWORD;
        }else {
            //用户名不存在
            return  Result.NO_USERNAME;
        }
    }*/
}
