package com.neuedu.dao;

import com.neuedu.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {

    /**
     * 便利用户账号
     */
    List<User> listUname();

    /**
     * 查询用户信息
     */
    List<User> listUser();



    /**
     * 分页
     * @param rlevel
     * @return
     */
   int sumCount(Integer rlevel);

    /**
     * 通过输入框输入用户名来搜索用户信息
     * @param uname
     * @return
     */
   List<User> selectUser(String uname);


    /**
     * 删除vip用户信息
     */
    int deleteUser(@Param("uname") String uname);


    /**
     * 添加用户信息
     * @param
     * @return
     */
    int insertUser(@Param("uname") String uname,@Param("upwd") String upwd);

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
    User login(@Param("uname") String uname);


    /**
     * 根据账号去分配权限
     */
    int distribution(String uname, String raids);

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
