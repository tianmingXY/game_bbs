package com.module.mapper;

import com.module.pojo.Sorttype;
import java.util.List;
import java.util.Map;

/**
 * 分类 数据层
 * 
 * @author administrator
 * @date 2019-05-16 15:21:25
 */
public interface SorttypeMapper 
{

	/**
     * 查询分类信息
     * 
     * @param id 分类ID
     * @return 分类信息
     */
	public Sorttype selectSorttypeById(Integer id);
	
	/**
     * 查询分类列表
     * 
     * @param Sorttype 分类信息
     * @return 分类集合
     */
	public List<Sorttype> selectSorttypeList(Sorttype sorttype);
	
	/**
     * 查询所有分类
     * 
     * @return 分类列表
     */
    public List<Sorttype> selectAll(Map map);
	/**
     * 新增分类
     * 
     * @param Sorttype 分类信息
     * @return 结果
     */
	public int insertSorttype(Sorttype sorttype);
	
	/**
     * 修改分类
     * 
     * @param sorttype 分类信息
     * @return 结果
     */
	public int updateSorttype(Sorttype sorttype);
	 /**
     * 批量修改
     * @param list
     * @return
     */
   public int batchUpdate(List<Sorttype> list);
	/**
     * 删除分类
     * 
     * @param id 分类ID
     * @return 结果
     */
	public int deleteSorttypeById(Integer id);
	
	/**
     * 批量删除分类
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int batchDeleteSorttype(Integer[] ids);
	
    /**
     * 批量添加
     * @param list
     * @return
     */
   public int batchAdd(List<Sorttype> list);
   
}