package com.module.mapper;

import com.module.pojo.Userinfo;
import java.util.List;
import java.util.Map;

/**
 * 用户信息 数据层
 * 
 * @author administrator
 * @date 2019-05-13 22:30:39
 */
public interface UserinfoMapper 
{

	/**
     * 查询用户信息信息
     * 
     * @param id 用户信息ID
     * @return 用户信息信息
     */
	public Userinfo selectUserinfoById(Integer id);
	
	/**
     * 查询用户信息列表
     * 
     * @param Userinfo 用户信息信息
     * @return 用户信息集合
     */
	public List<Userinfo> selectUserinfoList(Userinfo userinfo);
	
	/**
     * 查询所有用户信息
     * 
     * @return 用户信息列表
     */
    public List<Userinfo> selectAll(Map map);
	/**
     * 新增用户信息
     * 
     * @param Userinfo 用户信息信息
     * @return 结果
     */
	public int insertUserinfo(Userinfo userinfo);
	
	/**
     * 修改用户信息
     * 
     * @param userinfo 用户信息信息
     * @return 结果
     */
	public int updateUserinfo(Userinfo userinfo);
	 /**
     * 批量修改
     * @param list
     * @return
     */
   public int batchUpdate(List<Userinfo> list);
	/**
     * 删除用户信息
     * 
     * @param id 用户信息ID
     * @return 结果
     */
	public int deleteUserinfoById(Integer id);
	
	/**
     * 批量删除用户信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int batchDeleteUserinfo(Integer[] ids);
	
    /**
     * 批量添加
     * @param list
     * @return
     */
   public int batchAdd(List<Userinfo> list);
   
}