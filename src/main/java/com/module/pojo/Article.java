package com.module.pojo;

import java.util.Date;


/**
 * 帖子表 article
 *
 * @author administrator
 * @date 2019-05-16 23:14:22
 */
public class Article {
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    private Integer id;
    /**
     * 标题
     */
    private String title;
    /**
     * 大纲
     */
    private String outline;
    /**
     * 帖子主图
     */
    private String picurl;
    /**
     * 帖子分类
     */
    private String type;
    /**
     * 帖子内容
     */
    private String content;
    /**
     * 帖子作者
     */
    private String author;
    /**
     * 点击数
     */
    private Integer hits;
    /**
     * 帖子状态
     */
    private String state;
    /**
     * 备注
     */
    private String intro;
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
     * 设置：标题
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 获取：标题
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置：大纲
     */
    public void setOutline(String outline) {
        this.outline = outline;
    }

    /**
     * 获取：大纲
     */
    public String getOutline() {
        return outline;
    }

    /**
     * 设置：帖子主图
     */
    public void setPicurl(String picurl) {
        this.picurl = picurl;
    }

    /**
     * 获取：帖子主图
     */
    public String getPicurl() {
        return picurl;
    }

    /**
     * 设置：帖子分类
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 获取：帖子分类
     */
    public String getType() {
        return type;
    }

    /**
     * 设置：帖子内容
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * 获取：帖子内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置：帖子作者
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * 获取：帖子作者
     */
    public String getAuthor() {
        return author;
    }

    /**
     * 设置：点击数
     */
    public void setHits(Integer hits) {
        this.hits = hits;
    }

    /**
     * 获取：点击数
     */
    public Integer getHits() {
        return hits;
    }

    /**
     * 设置：帖子状态
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * 获取：帖子状态
     */
    public String getState() {
        return state;
    }

    /**
     * 设置：备注
     */
    public void setIntro(String intro) {
        this.intro = intro;
    }

    /**
     * 获取：备注
     */
    public String getIntro() {
        return intro;
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
