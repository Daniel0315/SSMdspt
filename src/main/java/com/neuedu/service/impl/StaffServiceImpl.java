package com.neuedu.service.impl;

import com.neuedu.bean.User;
import com.neuedu.dao.StaffDao;
import com.neuedu.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StaffServiceImpl implements StaffService {
    @Autowired
    private StaffDao staffDao;
    @Override
    public List<User> listStaff() {
        return staffDao.listStaff();
    }

    @Override
    public int deleteStaff(String uname) {
        return staffDao.deleteStaff(uname);
    }

    @Override
    public User selectStaffByUname(String uname) {
        return staffDao.selectStaffByUname(uname);
    }

    @Override
    public int updateStaff(User user) {
        return staffDao.updateStaff(user);
    }
}
