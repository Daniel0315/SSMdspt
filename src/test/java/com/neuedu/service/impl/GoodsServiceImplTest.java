package com.neuedu.service.impl;

import com.neuedu.service.GoodsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import sun.dc.pr.PRError;

import static org.junit.Assert.*;
@RunWith(SpringRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})
public class GoodsServiceImplTest {
    @Autowired
    private GoodsService goodsService;
    @Test
    public void listGname() {
        System.out.println(goodsService.listGname());
    }

    @Test
    public void findByGid() {
        System.out.println(goodsService.findByGid(1));
    }

    @Test
    public void searchByGname() {
        System.out.println(goodsService.searchByGname("火"));
    }
}