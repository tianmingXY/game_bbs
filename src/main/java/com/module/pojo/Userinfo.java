package com.module.pojo;

import java.util.Date;


/**
 * 用户表 userinfo
 *
 * @author administrator
 * @date 2019-05-31 14:22:44
 */
public class Userinfo {
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    private Integer id;
    /**
     * 姓名
     */
    private String name;
    /**
     * 电话
     */
    private String phone;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 金额
     */
    private String money;
    /**
     * 头像
     */
    private String picurl;
    /**
     * 性别
     */
    private String sex;
    /**
     * 密码
     */
    private String password;
    /**
     * 角色
     */
    private String role;
    /**
     * 创建时间
     */
    private Date createtime;

    /**
     * 设置：ID
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取：ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置：姓名
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取：姓名
     */
    public String getName() {
        return name;
    }

    /**
     * 设置：电话
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取：电话
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置：邮箱
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取：邮箱
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置：金额
     */
    public void setMoney(String money) {
        this.money = money;
    }

    /**
     * 获取：金额
     */
    public String getMoney() {
        return money;
    }

    /**
     * 设置：头像
     */
    public void setPicurl(String picurl) {
        this.picurl = picurl;
    }

    /**
     * 获取：头像
     */
    public String getPicurl() {
        return picurl;
    }

    /**
     * 设置：性别
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * 获取：性别
     */
    public String getSex() {
        return sex;
    }

    /**
     * 设置：密码
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 获取：密码
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置：角色
     */
    public void setRole(String role) {
        this.role = role;
    }

    /**
     * 获取：角色
     */
    public String getRole() {
        return role;
    }

    /**
     * 设置：创建时间
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * 获取：创建时间
     */
    public Date getCreatetime() {
        return createtime;
    }
}
