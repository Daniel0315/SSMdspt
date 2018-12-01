package com.neuedu.service.impl;

import com.neuedu.bean.Goods;
import com.neuedu.bean.Type;
import com.neuedu.dao.GoodsDao;
import com.neuedu.dao.OrderDao;
import com.neuedu.dao.TypeDao;
import com.neuedu.dto.GoodsDto;
import com.neuedu.service.GoodsService;
import com.neuedu.utils.ImgUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsDao goodsDao;
    @Autowired
    private TypeDao typeDao;
    @Autowired
    private OrderDao orderDao;
    @Override
    public List<Goods> listGname() {
      List<Goods> goods=goodsDao.listGname();
      List<Type> types=typeDao.listType();
        for (Goods good : goods) {
            for (Type type : types) {
                if (good.getCid().equals(type.getTid())){
                    good.setType(type);
                }
            }
        }
      return goods;
    }

    @Override
    public void insertGoods(GoodsDto goodsDto, String path) {
        String gimg=ImgUtils.onload(path,goodsDto.getGimg());
        Goods goods=new Goods();
        BeanUtils.copyProperties(goodsDto,goods);
        goods.setGimg(gimg);
        goodsDao.insertGoods(goods);
    }

    @Override
    @Transactional
    public boolean deletegoods(Integer gid) {
        int i=goodsDao.selectGoodsByGid(gid);
        if (i!=0){
            int dg=goodsDao.deletegoods(gid);
            int dor=orderDao.deleteOrder(gid);
            return true;
        }else {
            return false;
        }


    }

    @Override
    public Goods findByGid(Integer gid) {
        Goods goods=goodsDao.findByGid(gid);
        return goods;
    }

    @Override
    public void updateGoodsByGid(GoodsDto goodsDto,String path) {
        String gimg=ImgUtils.onload(path,goodsDto.getGimg());
        Goods goods=new Goods();
        BeanUtils.copyProperties(goodsDto,goods);
        goods.setGimg(gimg);
        goodsDao.updateGoodsByGid(goods);
    }

    @Override
    public List<Goods> searchByGname(String gname) {
      List<Goods> goodsList=goodsDao.searchByGname(gname);
      return goodsList;
    }
}
