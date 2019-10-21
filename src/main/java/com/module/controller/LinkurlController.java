package com.module.controller;

import com.github.pagehelper.Page;
import com.module.mapper.LinkurlMapper;
import com.module.pojo.Linkurl;
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
 * 页面请求控制  友情链接管理
 */
@Controller
public class LinkurlController {
    @Autowired
    LinkurlMapper linkurlMapper;


    /**
     * 跳转到列表页面
     *
     * @return
     */
    @RequestMapping("manage/linkurlList")
    public String linkurlList() {
        return "manage/linkurl/linkurlList";
    }

    /**
     * 跳转到添加页面
     *
     * @return
     */
    @RequestMapping("manage/addLinkurl")
    public String addLinkurl(Model model) {
        return "manage/linkurl/saveLinkurl";
    }

    /**
     * 跳转到修改页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/editLinkurl")
    public String editLinkurl(Integer id, Model model) {
        Linkurl linkurl = linkurlMapper.selectLinkurlById(id);
        model.addAttribute("linkurl", linkurl);
        return "manage/linkurl/saveLinkurl";
    }

    /**
     * 查看详情页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/linkurlInfo")
    public String linkurlInfo(Integer id, Model model) {
        Linkurl linkurl = linkurlMapper.selectLinkurlById(id);
        model.addAttribute("linkurl", linkurl);
        return "manage/linkurl/linkurlInfo";
    }


    /**
     * 分页查询
     *
     * @param page  默认第一页
     * @param limit 默认每页显示10条
     * @return
     */
    @RequestMapping("manage/queryLinkurlList")
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
        List<Linkurl> list = linkurlMapper.selectAll(map);
        PageInfo<Linkurl> pageInfo = new PageInfo<Linkurl>(list);  //使用mybatis分页插件
        ResultUtil resultUtil = new ResultUtil();
        resultUtil.setCode(0);  //设置返回状态0为成功
        resultUtil.setCount(pageInfo.getTotal());  //获取总记录数目 类似count(*)
        resultUtil.setData(pageInfo.getList());    //获取当前查询出来的集合
        return resultUtil;
    }

    /**
     * 插入记录
     */
    @RequestMapping("manage/saveLinkurl")
    @ResponseBody
    public ResultUtil saveLinkurl(Linkurl linkurl, HttpSession session) {
        Date nowTime = new Date();
        linkurl.setCreatetime(nowTime);
        try {
            linkurlMapper.insertLinkurl(linkurl);
            return ResultUtil.ok("添加友情链接成功");
        } catch (Exception e) {
            return ResultUtil.error("添加友情链接出错,稍后再试！");
        }
    }

    /**
     * 更新记录
     */
    @RequestMapping("manage/updateLinkurl")
    @ResponseBody
    public ResultUtil updateLinkurl(Linkurl linkurl, HttpSession session) {
        Date nowTime = new Date();
        linkurl.setCreatetime(nowTime);
        try {
            linkurlMapper.updateLinkurl(linkurl);
            return ResultUtil.ok("修改友情链接成功");
        } catch (Exception e) {
            return ResultUtil.error("修改友情链接出错,稍后再试！");
        }
    }


    /**
     * 根据ID删除
     *
     * @param id
     * @return
     */
    @RequestMapping("manage/deleteLinkurl")
    @ResponseBody
    public ResultUtil deleteLinkurlById(Integer id) {
        try {
            linkurlMapper.deleteLinkurlById(id);
            return ResultUtil.ok("删除友情链接成功");
        } catch (Exception e) {
            return ResultUtil.error("删除友情链接出错,稍后再试！");
        }
    }

    /**
     * 根据ID批量删除
     *
     * @param idsStr
     * @return
     */
    @RequestMapping("manage/deletesLinkurl")
    @ResponseBody
    public ResultUtil deletesLinkurl(String idsStr) {
        try {
            if (!StringUtils.isBlank(idsStr)) {
                String[] ids = idsStr.split(",");
                for (String id : ids) {
                    linkurlMapper.deleteLinkurlById(Integer.parseInt(id));
                }
            }
            return ResultUtil.ok("批量删除友情链接成功");
        } catch (Exception e) {
            return ResultUtil.error("删除友情链接出错,稍后再试！");
        }
    }


}
