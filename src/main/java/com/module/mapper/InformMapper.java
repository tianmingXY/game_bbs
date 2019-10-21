package com.module.mapper;

import com.module.pojo.Inform;

import java.util.List;
import java.util.Map;

/**
 * Inform 数据层
 *
 * @author administrator
 * @date 2019-04-27 21:51:22
 */
public interface InformMapper {

    /**
     * 查询Inform信息
     *
     * @param id InformID
     * @return Inform信息
     */
    public Inform selectInformById(Integer id);

    /**
     * 查询Inform列表
     *
     * @param Inform Inform信息
     * @return Inform集合
     */
    public List<Inform> selectInformList(Inform inform);

    /**
     * 查询所有Inform
     *
     * @return Inform列表
     */
    public List<Inform> selectAll(Map map);

    /**
     * 新增Inform
     *
     * @param Inform Inform信息
     * @return 结果
     */
    public int insertInform(Inform inform);

    /**
     * 修改Inform
     *
     * @param inform Inform信息
     * @return 结果
     */
    public int updateInform(Inform inform);

    /**
     * 批量修改
     *
     * @param list
     * @return
     */
    public int batchUpdate(List<Inform> list);

    /**
     * 删除Inform
     *
     * @param id InformID
     * @return 结果
     */
    public int deleteInformById(Integer id);

    /**
     * 批量删除Inform
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int batchDeleteInform(Integer[] ids);

    /**
     * 批量添加
     *
     * @param list
     * @return
     */
    public int batchAdd(List<Inform> list);

}