package com.neuedu.service;

import com.neuedu.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StaffService {

    /**
     * 遍历员工信息
     */
    List<User> listStaff();

    /**
     * 删除员工信息
     * @param uname
     * @return
     */
    int deleteStaff(@Param("uname") String uname);

    /**
     * 根据用户名查找员工信息
     */
    User selectStaffByUname(@Param("uname") String uname);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    int updateStaff(User user);
}
