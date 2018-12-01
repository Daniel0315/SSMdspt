package com.neuedu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neuedu.bean.User;
import com.neuedu.dto.AuthorityDto;
import com.neuedu.service.UserService;
import com.neuedu.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping("user")
@SessionAttributes("sessionid")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/user")
    public String user(Model model,Integer pageNum,HttpSession session){
        if (pageNum==null){
            pageNum=1;
        }
        PageHelper.startPage(pageNum,5);
        List<User> userList=userService.listUser();
        PageInfo pageInfo=new PageInfo(userList,5);
        model.addAttribute("user",userList);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("auto", session.getAttribute("user"));
        return "user";
    }

    @GetMapping("/deleteuser")
    public String deleteuser(String uname){
        int i=userService.deleteUser(uname);
        if (i!=-1){
            return "redirect:user";
        }else {
            return null;
        }
    }


    
    @PostMapping("selectByName")
    public String selectUserByName(Model model,String uname){
        List<User> userList=userService.selectUser(uname);
        model.addAttribute("user",userList);
        return "forward:user";
    }

    @RequestMapping("adduserview")
    public String insertUserView(){
        return "adduser";
    }

    @PostMapping("/adduser")
    public String inserUser(String uname,String upwd){
        userService.insertUser(uname,upwd);
        return "redirect:user";
    }

    @GetMapping("/updateuserview")
    public String updateUserView(Model model,String uname){
       User user=userService.seleteUserByUname(uname);
       model.addAttribute("user",user);
        return "updateuser";
    }

    @GetMapping("/updateuser")
    public String updateUser(String uname,String receiver,String raddress, String rtelephone, String ubirthday, String usex){
        User user=new User();
        user.setUname(uname);
        user.setRaddress(raddress);
        user.setReceiver(receiver);
        user.setRtelephone(rtelephone);
        user.setUbirthday(ubirthday);
        user.setUsex(usex);
        int i=userService.updateUser(user);
        if (i!=-1){
            return "redirect:user";
        }
        return null;
    }


    @RequestMapping("/loginview")
    public String loginView(){
        return "login";
    }



    @RequestMapping(value = "login")
    @ResponseBody
    public Result login(@RequestParam("username") String username, @RequestParam("password") String password, HttpServletRequest request){
        HttpSession session=request.getSession();
        AuthorityDto authorityDto =userService.login(username);
        if (authorityDto!=null){
            if(authorityDto.getUpwd().equals(password)){
                //登录成功
                session.setAttribute("user",authorityDto);
                if (authorityDto.getRlevel()==2){
                    //管理员登陆
                    return Result.ADMIN_LOGIN_SUCCESS;
                }
                if (authorityDto.getRlevel()==1){
                    //用户登陆
                    return Result.USER_LOGIN_SUCCESS;
                }

            }
            //密码错误
            return Result.ERROR_PASSWORD;
        }else {
            //用户名不存在
            return  Result.NO_USERNAME;
        }
    }

    @RequestMapping("home")
    public String home(HttpSession session,Model model){
        model.addAttribute("auto", session.getAttribute("user"));
        return "home";
    }

    @RequestMapping("registerview")
    public String registerView(){
        return "register";
    }

    @PostMapping("checkuname")
    @ResponseBody
    public Result checkuname(@RequestParam("username") String username){
       User user=userService.checkUname(username);
       if (user!=null){
           //用户名已存在
           return Result.EXIS_USERNAME;
       }else {
           //用户名不存在
           return Result.NOT_USERNAME;
       }
    }

    @PostMapping("register")
    public String register(@RequestParam("username") String username,@RequestParam("password") String password){
        User user=new User();
        user.setUname(username);
        user.setUpwd(password);
        int i=userService.register(user);
        if (i!=-1){
            return "login";
        }else {
            return "register";
        }
    }
}
