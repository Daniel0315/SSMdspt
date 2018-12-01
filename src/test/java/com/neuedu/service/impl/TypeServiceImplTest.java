package com.neuedu.service.impl;

import com.neuedu.bean.Type;
import com.neuedu.service.TypeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})
public class TypeServiceImplTest {

    @Autowired
    private TypeService typeService;
    @Test
    public void listType() {
        List<Type> types=typeService.listType();
        System.out.println(types);
    }
}