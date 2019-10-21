package com.module.pojo;

import java.util.Date;


/**
 * 分类表 sorttype
 *
 * @author administrator
 * @date 2019-05-16 15:54:54
 */
public class Sorttype {
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    private Integer id;
    /**
     * 分类名称
     */
    private String sortname;
    /**
     * 分类描述
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
     * 设置：分类名称
     */
    public void setSortname(String sortname) {
        this.sortname = sortname;
    }

    /**
     * 获取：分类名称
     */
    public String getSortname() {
        return sortname;
    }

    /**
     * 设置：分类描述
     */
    public void setIntro(String intro) {
        this.intro = intro;
    }

    /**
     * 获取：分类描述
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
