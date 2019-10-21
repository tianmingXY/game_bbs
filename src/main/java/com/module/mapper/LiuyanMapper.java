package com.module.mapper;

import com.module.pojo.Liuyan;
import java.util.List;
import java.util.Map;

/**
 * 留言 数据层
 * 
 * @author administrator
 * @date 2019-05-18 09:34:57
 */
public interface LiuyanMapper 
{

	/**
     * 查询留言信息
     * 
     * @param id 留言ID
     * @return 留言信息
     */
	public Liuyan selectLiuyanById(Integer id);
	
	/**
     * 查询留言列表
     * 
     * @param Liuyan 留言信息
     * @return 留言集合
     */
	public List<Liuyan> selectLiuyanList(Liuyan liuyan);
	
	/**
     * 查询所有留言
     * 
     * @return 留言列表
     */
    public List<Liuyan> selectAll(Map map);
	/**
     * 新增留言
     * 
     * @param Liuyan 留言信息
     * @return 结果
     */
	public int insertLiuyan(Liuyan liuyan);
	
	/**
     * 修改留言
     * 
     * @param liuyan 留言信息
     * @return 结果
     */
	public int updateLiuyan(Liuyan liuyan);
	 /**
     * 批量修改
     * @param list
     * @return
     */
   public int batchUpdate(List<Liuyan> list);
	/**
     * 删除留言
     * 
     * @param id 留言ID
     * @return 结果
     */
	public int deleteLiuyanById(Integer id);
	
	/**
     * 批量删除留言
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int batchDeleteLiuyan(Integer[] ids);
	
    /**
     * 批量添加
     * @param list
     * @return
     */
   public int batchAdd(List<Liuyan> list);
   
}