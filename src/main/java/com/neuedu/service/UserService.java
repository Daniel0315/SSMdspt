package com.neuedu.service;

import com.neuedu.bean.User;
import com.neuedu.dto.AuthorityDto;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {

    /**
     * 查询用户信息
     */
    List<User> listUser();


    /**
     * 删除vip用户信息
     */
    int deleteUser(@Param("uname") String uname);


    List<User> selectUser(String uname);


    /**
     * 添加用户信息
     * @param
     * @return
     */
    int insertUser(String uname,String upwd);

    /**
     * 通过账户查找信息
     */
    User seleteUserByUname(@Param("uname") String uname);

    /**
     * 修改vip用户信息
     *
     */
    int updateUser(User user);


    /**
     * 登录
     */
    AuthorityDto login(@Param("uname") String uname);

    /**
     * 注册校验用户名
     */
    User checkUname(@Param("uname") String uname);

    /**
     * 注册用户
     * @param user
     * @return
     */
    int register(User user);
}
