package com.module.pojo;

import java.util.Date;


/**
 * Inform表 inform
 *
 * @author administrator
 * @date 2019-04-27 21:51:22
 */
public class Inform {
    private static final long serialVersionUID = 1L;

    /**
     * 通知ID
     */
    private Integer id;
    /**
     * 通知标题
     */
    private String title;
    /**
     * 通知内容
     */
    private String content;
    /**
     * 创建时间
     */
    private Date createtime;

    /**
     * 设置：通知ID
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取：通知ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置：通知标题
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 获取：通知标题
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置：通知内容
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * 获取：通知内容
     */
    public String getContent() {
        return content;
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
