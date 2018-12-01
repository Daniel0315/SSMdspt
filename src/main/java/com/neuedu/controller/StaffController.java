package com.neuedu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neuedu.bean.User;
import com.neuedu.dto.GoodsDto;
import com.neuedu.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("staff")
public class StaffController {
    @Autowired
    private StaffService staffService;

    @RequestMapping("staff")
    public String listStaff(Model model, Integer pageNum, HttpSession session){
        if (pageNum==null){
            pageNum=1;
        }
        PageHelper.startPage(pageNum,5);
        List<User> userList=staffService.listStaff();
        PageInfo pageInfo=new PageInfo(userList,5);
        model.addAttribute("staff",userList);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("auto", session.getAttribute("user"));
        return "staff";
    }
    @GetMapping("/deletestaff/uname={uname}")
    public String deleteStaff(@PathVariable("uname") String uname){
        int i=staffService.deleteStaff(uname);
        if (i!=-1){
            return "redirect:/staff/staff";
        }
        return null;
    }

    @GetMapping("/updatestaffview/uname={uname}")
    public String updatestaffview(@PathVariable("uname") String uname,Model model){
       User user=staffService.selectStaffByUname(uname);
       model.addAttribute("user",user);
        return "updatestaff";
    }
    @GetMapping("updatestaff")
    public String updatestaff(User user){
        staffService.updateStaff(user);
        return "redirect:/staff/staff";
    }
}
