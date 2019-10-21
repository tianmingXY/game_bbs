package com.module.pojo;

import java.util.Date;


/**
 * 问卷表 wenjuan
 *
 * @author administrator
 * @date 2019-05-14 20:54:41
 */
public class Wenjuan {
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    private Integer id;
    /**
     * 题目
     */
    private String name;
    /**
     * 答案
     */
    private String daan;
    /**
     * 分数
     */
    private String fenshu;
    /**
     * 选项
     */
    private String xuanxiang;
    /**
     * 所属id
     */
    private Integer tId;
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
     * 设置：题目
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取：题目
     */
    public String getName() {
        return name;
    }

    /**
     * 设置：答案
     */
    public void setDaan(String daan) {
        this.daan = daan;
    }

    /**
     * 获取：答案
     */
    public String getDaan() {
        return daan;
    }

    /**
     * 设置：分数
     */
    public void setFenshu(String fenshu) {
        this.fenshu = fenshu;
    }

    /**
     * 获取：分数
     */
    public String getFenshu() {
        return fenshu;
    }

    /**
     * 设置：选项
     */
    public void setXuanxiang(String xuanxiang) {
        this.xuanxiang = xuanxiang;
    }

    /**
     * 获取：选项
     */
    public String getXuanxiang() {
        return xuanxiang;
    }

    /**
     * 设置：所属id
     */
    public void setTId(Integer tId) {
        this.tId = tId;
    }

    /**
     * 获取：所属id
     */
    public Integer getTId() {
        return tId;
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
