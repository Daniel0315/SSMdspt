package com.neuedu.service;

import com.neuedu.bean.Authority;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AuthorityService {

    /**
     * 查询权限
     * @return
     */
    List<Authority> listAuthority(@Param("ids") List<Integer> ids);
}
