package com.neuedu.service.impl;

import com.neuedu.service.StaffService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;
@RunWith(SpringRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})
public class StaffServiceImplTest {

    @Autowired
    private StaffService staffService;
    @Test
    public void listStaff() {
        System.out.println(staffService.listStaff());
    }
}