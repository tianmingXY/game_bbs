package com.module.mapper;

import com.module.pojo.Article;

import java.util.List;
import java.util.Map;

/**
 * 帖子 数据层
 *
 * @author administrator
 * @date 2019-05-16 17:52:34
 */
public interface ArticleMapper {
    /**
     * 数据统计查询
     *
     * @param map
     * @return
     */
    public List<Map> countData(Map map);

    /**
     * 查询帖子信息
     *
     * @param id 帖子ID
     * @return 帖子信息
     */
    public Article selectArticleById(Integer id);

    /**
     * 查询帖子列表
     *
     * @param Article 帖子信息
     * @return 帖子集合
     */
    public List<Article> selectArticleList(Article article);

    /**
     * 查询所有帖子
     *
     * @return 帖子列表
     */
    public List<Article> selectAll(Map map);

    /**
     * 新增帖子
     *
     * @param Article 帖子信息
     * @return 结果
     */
    public int insertArticle(Article article);

    /**
     * 修改帖子
     *
     * @param article 帖子信息
     * @return 结果
     */
    public int updateArticle(Article article);

    /**
     * 批量修改
     *
     * @param list
     * @return
     */
    public int batchUpdate(List<Article> list);

    /**
     * 删除帖子
     *
     * @param id 帖子ID
     * @return 结果
     */
    public int deleteArticleById(Integer id);

    /**
     * 批量删除帖子
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int batchDeleteArticle(Integer[] ids);

    /**
     * 批量添加
     *
     * @param list
     * @return
     */
    public int batchAdd(List<Article> list);

}