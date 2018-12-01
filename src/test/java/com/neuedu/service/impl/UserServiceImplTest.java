package com.neuedu.service.impl;

import com.neuedu.bean.User;
import com.neuedu.service.UserService;
import com.neuedu.utils.DateUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})
public class UserServiceImplTest {
    @Autowired
    private UserService userService;

    @Test
    public void listUser() {
        List<User> userList=userService.listUser();
        JSONArray jsonArray=JSONArray.fromObject(userList);
        System.out.println(jsonArray.toString());
    }



    @Test
    public void deleteUser() {
        System.out.println(userService.deleteUser("1649387608"));
    }

    @Test
    public void selectUser() {
        System.out.println(userService.selectUser("1"));
    }

    @Test
    public void login() {
        System.out.println(userService.login("1649387608"));
    }
}