package com.module.pojo;
import java.util.Date;



/**
 * 留言表 liuyan
 * 
 * @author administrator
 * @date 2019-05-18 09:34:57
 */
public class Liuyan
{
	private static final long serialVersionUID = 1L;
	
	/** ID */
	private Integer id;
	/** 评分 */
	private Integer score;
	/** 用户名 */
	private String username;
	/** 留言内容 */
	private String content;
	/** 备注 */
	private String intro;
	/** 图片 */
	private String picurl;
	/** 创建时间 */
	private Date createtime;
	/**
	 * 设置：ID
	 */
	public void setId(Integer id) 
	{
		this.id = id;
	}
	
	/**
	 * 获取：ID
	 */
	public Integer getId() 
	{
		return id;
	}
	/**
	 * 设置：用户名
	 */
	public void setUsername(String username) 
	{
		this.username = username;
	}
	
	/**
	 * 获取：用户名
	 */
	public String getUsername() 
	{
		return username;
	}
	/**
	 * 设置：留言内容
	 */
	public void setContent(String content) 
	{
		this.content = content;
	}
	
	/**
	 * 获取：留言内容
	 */
	public String getContent() 
	{
		return content;
	}
	/**
	 * 设置：备注
	 */
	public void setIntro(String intro) 
	{
		this.intro = intro;
	}
	
	/**
	 * 获取：备注
	 */
	public String getIntro() 
	{
		return intro;
	}
	/**
	 * 设置：图片
	 */
	public void setPicurl(String picurl) 
	{
		this.picurl = picurl;
	}
	
	/**
	 * 获取：图片
	 */
	public String getPicurl() 
	{
		return picurl;
	}
	/**
	 * 设置：创建时间
	 */
	public void setCreatetime(Date createtime) 
	{
		this.createtime = createtime;
	}
	
	/**
	 * 获取：创建时间
	 */
	public Date getCreatetime() 
	{
		return createtime;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}
}
