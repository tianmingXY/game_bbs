package com.module.mapper;

import com.module.pojo.Wenjuan;
import java.util.List;
import java.util.Map;

/**
 * 问卷 数据层
 * 
 * @author administrator
 * @date 2019-05-14 20:54:41
 */
public interface WenjuanMapper 
{

	/**
     * 查询问卷信息
     * 
     * @param id 问卷ID
     * @return 问卷信息
     */
	public Wenjuan selectWenjuanById(Integer id);
	
	/**
     * 查询问卷列表
     * 
     * @param Wenjuan 问卷信息
     * @return 问卷集合
     */
	public List<Wenjuan> selectWenjuanList(Wenjuan wenjuan);
	
	/**
     * 查询所有问卷
     * 
     * @return 问卷列表
     */
    public List<Wenjuan> selectAll(Map map);
	/**
     * 新增问卷
     * 
     * @param Wenjuan 问卷信息
     * @return 结果
     */
	public int insertWenjuan(Wenjuan wenjuan);
	
	/**
     * 修改问卷
     * 
     * @param wenjuan 问卷信息
     * @return 结果
     */
	public int updateWenjuan(Wenjuan wenjuan);
	 /**
     * 批量修改
     * @param list
     * @return
     */
   public int batchUpdate(List<Wenjuan> list);
	/**
     * 删除问卷
     * 
     * @param id 问卷ID
     * @return 结果
     */
	public int deleteWenjuanById(Integer id);
	
	/**
     * 批量删除问卷
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int batchDeleteWenjuan(Integer[] ids);
	
    /**
     * 批量添加
     * @param list
     * @return
     */
   public int batchAdd(List<Wenjuan> list);
   
}