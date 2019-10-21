package com.module.mapper;

import com.module.pojo.Wenjuanjieguo;
import java.util.List;
import java.util.Map;

/**
 * 问卷结果 数据层
 * 
 * @author administrator
 * @date 2019-05-14 21:39:56
 */
public interface WenjuanjieguoMapper 
{

	/**
     * 查询问卷结果信息
     * 
     * @param id 问卷结果ID
     * @return 问卷结果信息
     */
	public Wenjuanjieguo selectWenjuanjieguoById(Integer id);
	
	/**
     * 查询问卷结果列表
     * 
     * @param Wenjuanjieguo 问卷结果信息
     * @return 问卷结果集合
     */
	public List<Wenjuanjieguo> selectWenjuanjieguoList(Wenjuanjieguo wenjuanjieguo);
	
	/**
     * 查询所有问卷结果
     * 
     * @return 问卷结果列表
     */
    public List<Wenjuanjieguo> selectAll(Map map);
	/**
     * 新增问卷结果
     * 
     * @param Wenjuanjieguo 问卷结果信息
     * @return 结果
     */
	public int insertWenjuanjieguo(Wenjuanjieguo wenjuanjieguo);
	
	/**
     * 修改问卷结果
     * 
     * @param wenjuanjieguo 问卷结果信息
     * @return 结果
     */
	public int updateWenjuanjieguo(Wenjuanjieguo wenjuanjieguo);
	 /**
     * 批量修改
     * @param list
     * @return
     */
   public int batchUpdate(List<Wenjuanjieguo> list);
	/**
     * 删除问卷结果
     * 
     * @param id 问卷结果ID
     * @return 结果
     */
	public int deleteWenjuanjieguoById(Integer id);
	
	/**
     * 批量删除问卷结果
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int batchDeleteWenjuanjieguo(Integer[] ids);
	
    /**
     * 批量添加
     * @param list
     * @return
     */
   public int batchAdd(List<Wenjuanjieguo> list);
   
}