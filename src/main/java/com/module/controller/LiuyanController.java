package com.module.controller;

import com.github.pagehelper.Page;
import com.module.mapper.LiuyanMapper;
import com.module.pojo.Liuyan;
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
 * 页面请求控制  留言管理
 */
@Controller
public class LiuyanController {
    @Autowired
    LiuyanMapper liuyanMapper;


    /**
     * 跳转到列表页面
     *
     * @return
     */
    @RequestMapping("manage/liuyanList")
    public String liuyanList() {
        return "manage/liuyan/liuyanList";
    }

    /**
     * 跳转到添加页面
     *
     * @return
     */
    @RequestMapping("manage/addLiuyan")
    public String addLiuyan(Model model) {
        return "manage/liuyan/saveLiuyan";
    }

    /**
     * 跳转到修改页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/editLiuyan")
    public String editLiuyan(Integer id, Model model) {
        Liuyan liuyan = liuyanMapper.selectLiuyanById(id);
        model.addAttribute("liuyan", liuyan);
        return "manage/liuyan/saveLiuyan";
    }

    /**
     * 查看详情页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/liuyanInfo")
    public String liuyanInfo(Integer id, Model model) {
        Liuyan liuyan = liuyanMapper.selectLiuyanById(id);
        model.addAttribute("liuyan", liuyan);
        return "manage/liuyan/liuyanInfo";
    }


    /**
     * 分页查询
     *
     * @param page  默认第一页
     * @param limit 默认每页显示10条
     * @return
     */
    @RequestMapping("manage/queryLiuyanList")
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
        List<Liuyan> list = liuyanMapper.selectAll(map);
        PageInfo<Liuyan> pageInfo = new PageInfo<Liuyan>(list);  //使用mybatis分页插件
        ResultUtil resultUtil = new ResultUtil();
        resultUtil.setCode(0);  //设置返回状态0为成功
        resultUtil.setCount(pageInfo.getTotal());  //获取总记录数目 类似count(*)
        resultUtil.setData(pageInfo.getList());    //获取当前查询出来的集合
        return resultUtil;
    }

    /**
     * 插入记录
     */
    @RequestMapping("manage/saveLiuyan")
    @ResponseBody
    public ResultUtil saveLiuyan(Liuyan liuyan, HttpSession session) {
        Date nowTime = new Date();
        liuyan.setCreatetime(nowTime);
        try {
            liuyanMapper.insertLiuyan(liuyan);
            return ResultUtil.ok("添加留言成功");
        } catch (Exception e) {
            return ResultUtil.error("添加留言出错,稍后再试！");
        }
    }

    /**
     * 更新记录
     */
    @RequestMapping("manage/updateLiuyan")
    @ResponseBody
    public ResultUtil updateLiuyan(Liuyan liuyan, HttpSession session) {
        Date nowTime = new Date();
        liuyan.setCreatetime(nowTime);
        try {
            liuyanMapper.updateLiuyan(liuyan);
            return ResultUtil.ok("修改留言成功");
        } catch (Exception e) {
            return ResultUtil.error("修改留言出错,稍后再试！");
        }
    }


    /**
     * 根据ID删除
     *
     * @param id
     * @return
     */
    @RequestMapping("manage/deleteLiuyan")
    @ResponseBody
    public ResultUtil deleteLiuyanById(Integer id) {
        try {
            liuyanMapper.deleteLiuyanById(id);
            return ResultUtil.ok("删除留言成功");
        } catch (Exception e) {
            return ResultUtil.error("删除留言出错,稍后再试！");
        }
    }

    /**
     * 根据ID批量删除
     *
     * @param idsStr
     * @return
     */
    @RequestMapping("manage/deletesLiuyan")
    @ResponseBody
    public ResultUtil deletesLiuyan(String idsStr) {
        try {
            if (!StringUtils.isBlank(idsStr)) {
                String[] ids = idsStr.split(",");
                for (String id : ids) {
                    liuyanMapper.deleteLiuyanById(Integer.parseInt(id));
                }
            }
            return ResultUtil.ok("批量删除留言成功");
        } catch (Exception e) {
            return ResultUtil.error("删除留言出错,稍后再试！");
        }
    }


}
