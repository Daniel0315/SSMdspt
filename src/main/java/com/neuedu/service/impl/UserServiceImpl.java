package com.neuedu.service.impl;

import com.neuedu.bean.Authority;
import com.neuedu.bean.User;
import com.neuedu.dao.AuthorityDao;
import com.neuedu.dao.UserDao;
import com.neuedu.dto.AuthorityDto;
import com.neuedu.service.UserService;
import com.neuedu.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private AuthorityDao authorityDao;

    @Override
    public List<User> listUser() {
        return userDao.listUser();
    }



    @Override
    public int deleteUser(String uname) {
       int i=userDao.deleteUser(uname);
       return i;
    }

    @Override
    public List<User> selectUser(String uname) {
        List<User> userList=userDao.selectUser("1");
        for (User user : userList) {
            DateUtil.getDate(user.getUbirthday());
        }
        return userList;
    }

    @Override
    public int insertUser(String uname,String upwd) {
        return userDao.insertUser(uname,upwd);
    }

    @Override
    public User seleteUserByUname(String uname) {
        return userDao.seleteUserByUname(uname);
    }

    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public AuthorityDto login(String uname) {
        /**查询用户名是否存在*/
        User user=userDao.login(uname);

        AuthorityDto authorityDto=new AuthorityDto();
        if (user!=null&&user.getRlevel()==2){
            /**截取数据库中的权限ID*/
            String raids[]=user.getRaids().split(",");
            List<Integer> raidInt=new ArrayList<>();
            for (String raid : raids) {
                raidInt.add(Integer.valueOf(raid));
            }
            /**通过截取的ID查询权限*/
            List<Authority> authorityList=authorityDao.listAuthority(raidInt);
            authorityDto.setRaids(authorityList);
            authorityDto.setUid(user.getUid());
            authorityDto.setUname(user.getUname());
            authorityDto.setUpwd(user.getUpwd());
            authorityDto.setRlevel(user.getRlevel());
        }
        if (user!=null&&user.getRlevel()==1){
            authorityDto.setUid(user.getUid());
            authorityDto.setUname(user.getUname());
            authorityDto.setUpwd(user.getUpwd());
            authorityDto.setRlevel(user.getRlevel());
        }
        return authorityDto;
    }

    @Override
    public User checkUname(String uname) {
        return userDao.checkUname(uname);
    }

    @Override
    public int register(User user) {
        return userDao.register(user);
    }

}
