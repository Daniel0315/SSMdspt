package com.neuedu.service;

import com.neuedu.bean.Goods;
import com.neuedu.dto.GoodsDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsService {

    /**
     * 遍历商品
     */
    List<Goods> listGname();

    /**
     * 添加商品
     */
    public void insertGoods(GoodsDto goodsDto,String path);

    /**
     * 删除商品信息
     */
    boolean deletegoods(Integer gid);

    /**
     * 查找一条商品的记录
     */
    Goods findByGid(Integer gid);

    /**
     * 修改商品信息
     */
    void updateGoodsByGid(GoodsDto goodsDto,String path);

    /**
     * 通过商品名称搜索商品
     * @param
     * @return
     */
    List<Goods> searchByGname(@Param("gname") String gname);
}
