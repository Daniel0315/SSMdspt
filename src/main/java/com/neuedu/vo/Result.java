package com.neuedu.vo;

public enum Result {
    NO_USERNAME(0,"用户名不存在"),
    ADMIN_LOGIN_SUCCESS(1,"管理员登录成功"),
    USER_LOGIN_SUCCESS(2,"用户登录成功"),
    ERROR_PASSWORD(3,"密码错误"),
    NOT_USERNAME(4,"用户名不存在"),
    EXIS_USERNAME(5,"用户名已存在");

    private Integer eum;
    private String res;

    Result(Integer eum, String res) {
        this.eum = eum;
        this.res = res;
    }
}
