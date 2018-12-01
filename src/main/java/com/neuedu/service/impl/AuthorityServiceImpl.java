package com.neuedu.service.impl;

import com.neuedu.bean.Authority;
import com.neuedu.dao.AuthorityDao;
import com.neuedu.service.AuthorityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AuthorityServiceImpl implements AuthorityService {
    @Autowired
    private AuthorityDao authorityDao;
    @Override
    public List<Authority> listAuthority(List<Integer> ids) {
       return authorityDao.listAuthority(ids);
    }
}
