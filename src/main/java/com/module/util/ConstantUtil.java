package com.module.util;

import com.module.pojo.Admin;

import javax.servlet.http.HttpSession;

/**
 * 系统开发中常用常量工具类
 */
public class ConstantUtil {
    //后台管理员登陆后存放session的变量名
    public static final String MANAGE_LOGIN_SERSSION = "loginAdmin";
    public static final String MANAGE_LOGIN_SERSSION_ID = "loginAdminID";

    /**
     * 从session中获取当前登录的后台用户信息
     *
     * @param session
     * @return
     */
    public static Admin getManageLoginAdmin(HttpSession session) {
        Admin admin = (Admin) session.getAttribute(MANAGE_LOGIN_SERSSION);
        return admin;
    }


    /**
     * 从session中获取当前登录的后台用户的ID
     *
     * @param session
     * @return
     */
    public static Long getManageLoginAdminID(HttpSession session) {
        return (Long) session.getAttribute(MANAGE_LOGIN_SERSSION_ID);
    }
}
