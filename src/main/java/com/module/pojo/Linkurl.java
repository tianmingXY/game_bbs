package com.module.pojo;
import java.util.Date;



/**
 * 友情链接表 linkurl
 * 
 * @author administrator
 * @date 2019-05-16 23:13:53
 */
public class Linkurl
{
	private static final long serialVersionUID = 1L;
	
	/** ID */
	private Integer id;
	/** 名称 */
	private String name;
	/** 地址 */
	private String url;
	/** 图片 */
	private String picurl;
	/** 备注 */
	private String intro;
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
	 * 设置：名称
	 */
	public void setName(String name) 
	{
		this.name = name;
	}
	
	/**
	 * 获取：名称
	 */
	public String getName() 
	{
		return name;
	}
	/**
	 * 设置：地址
	 */
	public void setUrl(String url) 
	{
		this.url = url;
	}
	
	/**
	 * 获取：地址
	 */
	public String getUrl() 
	{
		return url;
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
}
