package com.module.mapper;

import com.module.pojo.Linkurl;
import java.util.List;
import java.util.Map;

/**
 * 友情链接 数据层
 * 
 * @author administrator
 * @date 2019-05-16 23:13:53
 */
public interface LinkurlMapper 
{

	/**
     * 查询友情链接信息
     * 
     * @param id 友情链接ID
     * @return 友情链接信息
     */
	public Linkurl selectLinkurlById(Integer id);
	
	/**
     * 查询友情链接列表
     * 
     * @param Linkurl 友情链接信息
     * @return 友情链接集合
     */
	public List<Linkurl> selectLinkurlList(Linkurl linkurl);
	
	/**
     * 查询所有友情链接
     * 
     * @return 友情链接列表
     */
    public List<Linkurl> selectAll(Map map);
	/**
     * 新增友情链接
     * 
     * @param Linkurl 友情链接信息
     * @return 结果
     */
	public int insertLinkurl(Linkurl linkurl);
	
	/**
     * 修改友情链接
     * 
     * @param linkurl 友情链接信息
     * @return 结果
     */
	public int updateLinkurl(Linkurl linkurl);
	 /**
     * 批量修改
     * @param list
     * @return
     */
   public int batchUpdate(List<Linkurl> list);
	/**
     * 删除友情链接
     * 
     * @param id 友情链接ID
     * @return 结果
     */
	public int deleteLinkurlById(Integer id);
	
	/**
     * 批量删除友情链接
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int batchDeleteLinkurl(Integer[] ids);
	
    /**
     * 批量添加
     * @param list
     * @return
     */
   public int batchAdd(List<Linkurl> list);
   
}