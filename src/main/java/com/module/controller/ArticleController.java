package com.module.controller;

import com.github.pagehelper.Page;
import com.module.mapper.ArticleMapper;
import com.module.mapper.SorttypeMapper;
import com.module.pojo.Article;
import com.module.pojo.Sorttype;
import com.module.util.ResultUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 页面请求控制  帖子管理
 */
@Controller
public class ArticleController {
    @Autowired
    ArticleMapper articleMapper;
    @Autowired
    SorttypeMapper sorttypeMapper;



    /**
     * 跳转到列表页面
     *
     * @return
     */
    @RequestMapping("manage/articleList")
    public String articleList() {
        return "manage/article/articleList";
    }

    /**
     * 跳转到添加页面
     *
     * @return
     */
    @RequestMapping("manage/addArticle")
    public String addArticle(Model model) {
        List<Sorttype> sorttypeList = sorttypeMapper.selectAll(null);
        model.addAttribute("sorttypeList", sorttypeList);
        return "manage/article/saveArticle";
    }

    /**
     * 跳转到修改页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/editArticle")
    public String editArticle(Integer id, Model model) {
        List<Sorttype> sorttypeList = sorttypeMapper.selectAll(null);
        model.addAttribute("sorttypeList", sorttypeList);
        Article article = articleMapper.selectArticleById(id);
        model.addAttribute("article", article);
        return "manage/article/saveArticle";
    }

    /**
     * 查看详情页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/articleInfo")
    public String articleInfo(Integer id, Model model) {
        Article article = articleMapper.selectArticleById(id);
        model.addAttribute("article", article);
        return "manage/article/articleInfo";
    }


    /**
     * 分页查询
     *
     * @param page  默认第一页
     * @param limit 默认每页显示10条
     * @return
     */
    @RequestMapping("manage/queryArticleList")
    @ResponseBody
    public ResultUtil getCarouseList(Integer page, Integer limit, String keyword) {
        if (null == page) { //默认第一页
            page = 1;
        }
        if (null == limit) { //默认每页10条
            limit = 10;
        }
        Map map = new HashMap();
        if (StringUtils.isNotEmpty(keyword)) {
            map.put("keyword", keyword);
        }
        Page pageHelper = PageHelper.startPage(page, limit, true);
        pageHelper.setOrderBy(" id desc ");
        List<Article> list = articleMapper.selectAll(map);
        PageInfo<Article> pageInfo = new PageInfo<Article>(list);  //使用mybatis分页插件
        ResultUtil resultUtil = new ResultUtil();
        resultUtil.setCode(0);  //设置返回状态0为成功
        resultUtil.setCount(pageInfo.getTotal());  //获取总记录数目 类似count(*)
        resultUtil.setData(pageInfo.getList());    //获取当前查询出来的集合
        return resultUtil;
    }

    /**
     * 插入记录
     */
    @RequestMapping("manage/saveArticle")
    @ResponseBody
    public ResultUtil saveArticle(Article article, HttpSession session) {
        Date nowTime = new Date();
        article.setCreatetime(nowTime);
        try {
            articleMapper.insertArticle(article);
            return ResultUtil.ok("添加帖子成功");
        } catch (Exception e) {
            return ResultUtil.error("添加帖子出错,稍后再试！");
        }
    }

    /**
     * 更新记录
     */
    @RequestMapping("manage/updateArticle")
    @ResponseBody
    public ResultUtil updateArticle(Article article, HttpSession session) {
        Date nowTime = new Date();
        article.setCreatetime(nowTime);
        try {
            articleMapper.updateArticle(article);
            return ResultUtil.ok("修改帖子成功");
        } catch (Exception e) {
            return ResultUtil.error("修改帖子出错,稍后再试！");
        }
    }


    /**
     * 根据ID删除
     *
     * @param id
     * @return
     */
    @RequestMapping("manage/deleteArticle")
    @ResponseBody
    public ResultUtil deleteArticleById(Integer id) {
        try {
            articleMapper.deleteArticleById(id);
            return ResultUtil.ok("删除帖子成功");
        } catch (Exception e) {
            return ResultUtil.error("删除帖子出错,稍后再试！");
        }
    }

    /**
     * 根据ID批量删除
     *
     * @param idsStr
     * @return
     */
    @RequestMapping("manage/deletesArticle")
    @ResponseBody
    public ResultUtil deletesArticle(String idsStr) {
        try {
            if (!StringUtils.isBlank(idsStr)) {
                String[] ids = idsStr.split(",");
                for (String id : ids) {
                    articleMapper.deleteArticleById(Integer.parseInt(id));
                }
            }
            return ResultUtil.ok("批量删除帖子成功");
        } catch (Exception e) {
            return ResultUtil.error("删除帖子出错,稍后再试！");
        }
    }


}
