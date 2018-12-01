package com.neuedu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neuedu.bean.Goods;
import com.neuedu.bean.Type;
import com.neuedu.bean.User;
import com.neuedu.dto.GoodsDto;
import com.neuedu.service.GoodsService;
import com.neuedu.service.TypeService;
import com.neuedu.utils.ImgUtils;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
@Controller
@RequestMapping("goods")
public class GoodsController  {

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private TypeService typeService;

    @RequestMapping("goods")
    public String listgoods(Model model,Integer pageNum,HttpSession session){
        if (pageNum==null){
            pageNum=1;
        }
        PageHelper.startPage(pageNum,3);
        List<Goods> goodsList=goodsService.listGname();
        PageInfo pageInfo=new PageInfo(goodsList,5);
        model.addAttribute("goods",goodsList);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("auto", session.getAttribute("user"));
        return "goods";
    }

   /* @RequestMapping("add")
    public String addGoods(Model model){
        List<Type> typeList=typeService.listType();
        model.addAttribute("type",typeList);
        return "addgoods";
    }*/

    @RequestMapping("addgoodsview")
    public String addGoodsView(Model model){
        return "addgoods";
    }

    @RequestMapping("typelist")
    @ResponseBody
    public List<Type> typeList(){
        List<Type> typeList=typeService.listType();
        return typeList;
    }
    @PostMapping("addgoods")
    public String addGoods(GoodsDto goodsDto, HttpServletRequest request){
        String path=request.getServletContext().getRealPath("/")+"onload/";
       goodsService.insertGoods(goodsDto,path);
        return "redirect:goods";
    }

    @GetMapping("deletegoods")
    public String deleteGoods(Integer gid){
        goodsService.deletegoods(gid);
        return "redirect:goods";
    }

    @GetMapping("updategoodsview")
    public String updateGoodsView(Integer gid,Model model){
       Goods goods=goodsService.findByGid(gid);
      List<Type> typeList=typeService.listType();
        model.addAttribute("goods",goods);
        model.addAttribute("type",typeList);
        return "updategoods";
    }
    @PostMapping("updategoods")
    public String updategoods(GoodsDto goodsDto,HttpServletRequest request){
        String path=request.getServletContext().getRealPath("/")+"onload/";
        goodsService.updateGoodsByGid(goodsDto,path);
        return "redirect:goods";
    }
    @GetMapping("selectByGname")
    public String selectByGname(String selectgname,Model model,Integer pageNum){
        if (pageNum==null){
            pageNum=1;
        }
        PageHelper.startPage(pageNum,3);
      List<Goods> goodsList=goodsService.searchByGname(selectgname);
      PageInfo pageInfo=new PageInfo(goodsList,5);
      model.addAttribute("goods",goodsList);
      model.addAttribute("pageInfo",pageInfo);
        return "goods";
    }

}
