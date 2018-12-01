package com.neuedu.service.impl;

import com.neuedu.bean.Type;
import com.neuedu.dao.TypeDao;
import com.neuedu.service.TypeService;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TypeServiceImpl implements TypeService {

    @Autowired
    private TypeDao typeDao;

    @Override
    public List<Type> listType() {
        List<Type> typeList=typeDao.listType();
        return typeList;
    }
}
