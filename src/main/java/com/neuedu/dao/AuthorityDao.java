package com.neuedu.dao;

import com.neuedu.bean.Authority;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AuthorityDao {

    /**
     * 查询权限
     * @return
     */
    List<Authority> listAuthority(List<Integer> ids);

    /**
     * 遍历权限
     */
    List<Authority> authority();
}
