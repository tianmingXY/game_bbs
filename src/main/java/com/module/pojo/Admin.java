package com.module.pojo;

import java.util.Date;


/**
 * 管理员表 admin
 *
 * @author administrator
 * @date 2019-04-28 13:21:02
 */
public class Admin {
    private static final long serialVersionUID = 1L;

    /**
     * 管理员ID
     */
    private Integer id;
    /**
     * 管理员用户名
     */
    private String adminname;
    /**
     * 管理员邮箱
     */
    private String admineamil;
    /**
     * 管理员密码
     */
    private String adminpassword;
    /**
     * 管理员电话
     */
    private String adminphone;
    /**
     * 添加时间
     */
    private Date createtime;
    /**
     * 状态0为可用 1位不可用
     */
    private Integer status;
    /**
     * 角色类型
     */
    private String role;

    /**
     * 设置：管理员ID
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取：管理员ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置：管理员用户名
     */
    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    /**
     * 获取：管理员用户名
     */
    public String getAdminname() {
        return adminname;
    }

    /**
     * 设置：管理员邮箱
     */
    public void setAdmineamil(String admineamil) {
        this.admineamil = admineamil;
    }

    /**
     * 获取：管理员邮箱
     */
    public String getAdmineamil() {
        return admineamil;
    }

    /**
     * 设置：管理员密码
     */
    public void setAdminpassword(String adminpassword) {
        this.adminpassword = adminpassword;
    }

    /**
     * 获取：管理员密码
     */
    public String getAdminpassword() {
        return adminpassword;
    }

    /**
     * 设置：管理员电话
     */
    public void setAdminphone(String adminphone) {
        this.adminphone = adminphone;
    }

    /**
     * 获取：管理员电话
     */
    public String getAdminphone() {
        return adminphone;
    }

    /**
     * 设置：添加时间
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * 获取：添加时间
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * 设置：状态0为可用 1位不可用
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 获取：状态0为可用 1位不可用
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 设置：角色类型
     */
    public void setRole(String role) {
        this.role = role;
    }

    /**
     * 获取：角色类型
     */
    public String getRole() {
        return role;
    }
}
