package com.neuedu.dto;

import com.neuedu.bean.Authority;

import java.util.List;

public class AuthorityDto {
    private Integer uid;           //用户id
    private String uname;          //用户账号
    private String upwd;           //用户密码   大于8位
    private Integer rlevel;        //等级
    private List<Authority> raids;          //权限

    public AuthorityDto() {
    }

    public AuthorityDto(Integer uid, String uname, String upwd, List<Authority> raids) {
        this.uid = uid;
        this.uname = uname;
        this.upwd = upwd;
        this.raids = raids;
    }

    public AuthorityDto(Integer uid, String uname, String upwd, Integer rlevel, List<Authority> raids) {
        this.uid = uid;
        this.uname = uname;
        this.upwd = upwd;
        this.rlevel = rlevel;
        this.raids = raids;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public List<Authority> getRaids() {
        return raids;
    }

    public void setRaids(List<Authority> raids) {
        this.raids = raids;
    }

    public Integer getRlevel() {
        return rlevel;
    }

    public void setRlevel(Integer rlevel) {
        this.rlevel = rlevel;
    }

    @Override
    public String toString() {
        return "AuthorityDto{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", upwd='" + upwd + '\'' +
                ", rlevel=" + rlevel +
                ", raids=" + raids +
                '}';
    }
}
