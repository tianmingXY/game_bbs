package com.module.controller.pc;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.module.controller.base.BaseController;
import com.module.mapper.*;
import com.module.pojo.*;
import com.module.util.ResultUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 前端控制器
 */
@Controller
public class FrontController extends BaseController {

    @Autowired
    InformMapper informMapper;
    @Autowired
    UserinfoMapper userinfoMapper;
    @Autowired
    WenjuanMapper wenjuanMapper;
    @Autowired
    WenjuanjieguoMapper wenjuanjieguoMapper;
    @Autowired
    SorttypeMapper sorttypeMapper;
    @Autowired
    ArticleMapper articleMapper;
    @Autowired
    LinkurlMapper linkurlMapper;
    @Autowired
    LiuyanMapper liuyanMapper;

    /**
     * 留言显示页面
     *
     * @param model
     * @return
     */
    @RequestMapping("pc/liuyan")
    public String liuyan(Model model) {
        Page<Object> pageInfo = PageHelper.startPage(1, 100, true);
        pageInfo.setOrderBy(" id desc ");
        List<Liuyan> liuyanList = liuyanMapper.selectAll(null);
        model.addAttribute("liuyanList", liuyanList);
        return "pc/liuyan";
    }

    /**
     * 留言提交页面
     *
     * @param liuyan
     * @return
     */
    @RequestMapping("pc/liuyanSubmit")
    public String liuyanSubmit(Liuyan liuyan) {
        liuyan.setCreatetime(new Date());
        liuyanMapper.insertLiuyan(liuyan);
        return "redirect:liuyan";
    }

    /**
     * 跳转到问卷管理页面
     *
     * @param model
     * @return
     */
    @RequestMapping("pc/wenjuan")
    public String wenjuan(Model model) {
        List<Wenjuan> wenjuanList = wenjuanMapper.selectAll(null);
        model.addAttribute("wenjuanList", wenjuanList);
        return "pc/wenjuan";
    }


    /**
     * 关于我们
     *
     * @param model
     * @return
     */
    @RequestMapping("pc/about")
    public String about(Model model) {
        return "pc/about";
    }


    @RequestMapping("pc/")
    public String index(Model model) {
        return "pc/index";
    }


    @RequestMapping("pc/articleList")
    public String indexType(Model model, Integer p, Integer limit, String keyword, String name, String orderStr, String type, HttpSession session) {
        limit = 6;
        if (null == p) { //默认第一页
            p = 1;
        }
        if (null == limit) { //默认每页10条
            limit = 9;
        }
        Map map = new HashMap();
        if (StringUtils.isNotEmpty(type)) {
            map.put("type", type);
            model.addAttribute("type", type);
        }
        if (StringUtils.isNotEmpty(keyword)) {
            map.put("keyword", keyword);
            map.put("type", null);
            model.addAttribute("keyword", keyword);
        }
        Page<Object> pageInfo = PageHelper.startPage(p, limit, true);
        pageInfo.setOrderBy(" id desc ");
        List<Article> beanDataList = articleMapper.selectAll(map);
        model.addAttribute("beanDataList", beanDataList);
        setPageParams(model, "pc/articleList", pageInfo); //绑定分页参数
        return "pc/articleList";
    }

    /**
     * 系统首页
     *
     * @param model
     * @return
     */
    @RequestMapping("pc/index")
    public String index(Model model, Integer p, Integer limit, String keyword, String title, String author, String orderStr, String type, HttpSession session) {
        limit = 6;
        if (null == p) { //默认第一页
            p = 1;
        }
        if (null == limit) { //默认每页10条
            limit = 9;
        }
        Map map = new HashMap();
        if (StringUtils.isNotEmpty(keyword)) {
            map.put("keyword", keyword);
            model.addAttribute("keyword", keyword);
        }
        if (StringUtils.isNotEmpty(title)) {
            map.put("title", title);
            model.addAttribute("title", title);
        }
        if (StringUtils.isNotEmpty(author)) {
            map.put("author", author);
            model.addAttribute("author", author);
        }
        if (StringUtils.isNotEmpty(type)) {
            map.put("type", type);
            model.addAttribute("type", type);
        }
        Page<Object> pageInfo = PageHelper.startPage(p, limit, true);
        if (StringUtils.isNotEmpty(orderStr)) {
            pageInfo.setOrderBy(orderStr);
        } else {
            pageInfo.setOrderBy(" id desc ");
        }
        List<Article> beanDataList = articleMapper.selectAll(map);
        model.addAttribute("beanDataList", beanDataList);
        setPageParams(model, "pc/index", pageInfo); //绑定分页参数
        List<Sorttype> sorttypeList = sorttypeMapper.selectAll(null);
        model.addAttribute("sorttypeList", sorttypeList);
        setLinkurlContent(session); //查询友情链接
        return "pc/index";
    }

    @RequestMapping("pc/articleIndex")
    public String articleIndex(Model model, Integer p, Integer limit, String keyword, String title, String author, String orderStr, String type, HttpSession session) {
        limit = 6;
        if (null == p) { //默认第一页
            p = 1;
        }
        if (null == limit) { //默认每页10条
            limit = 9;
        }
        Map map = new HashMap();
        if (StringUtils.isNotEmpty(keyword)) {
            map.put("keyword", keyword);
            model.addAttribute("keyword", keyword);
        }
        if (StringUtils.isNotEmpty(title)) {
            map.put("title", title);
            model.addAttribute("title", title);
        }
        if (StringUtils.isNotEmpty(author)) {
            map.put("author", author);
            model.addAttribute("author", author);
        }
        if (StringUtils.isNotEmpty(type)) {
            map.put("type", type);
            model.addAttribute("type", type);
        }
        Page<Object> pageInfo = PageHelper.startPage(p, limit, true);
        if (StringUtils.isNotEmpty(orderStr)) {
            pageInfo.setOrderBy(orderStr);
        } else {
            pageInfo.setOrderBy(" id desc ");
        }
        List<Article> beanDataList = articleMapper.selectAll(map);
        model.addAttribute("beanDataList", beanDataList);
        setPageParams(model, "pc/index", pageInfo); //绑定分页参数
        List<Sorttype> sorttypeList = sorttypeMapper.selectAll(null);
        model.addAttribute("sorttypeList", sorttypeList);
        setLinkurlContent(session); //查询友情链接
        return "pc/articleIndex";
    }

    /**
     * 将友情链接放入session中
     *
     * @param session
     */
    public void setLinkurlContent(HttpSession session) {
        List<Linkurl> linkurlList = linkurlMapper.selectAll(null);
        session.setAttribute("linkurlList", linkurlList);
    }

    /**
     * 帖子详情
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("pc/articleDetail")
    public String articleDetail(Integer id, Model model) {
        Article beanData = articleMapper.selectArticleById(id);
        model.addAttribute("beanData", beanData);
        List<Wenjuan> wenjuanList = wenjuanMapper.selectAll(null);
        model.addAttribute("wenjuanList", wenjuanList);
        return "pc/articleDetail";
    }

    @RequestMapping("pc/submitWenjuan")
    public String submitWenjuan(Integer id, String username, Model model, HttpServletRequest request) {
        Wenjuanjieguo j = new Wenjuanjieguo();
        j.setA1(request.getParameter("xx1"));
        j.setA2(request.getParameter("xx2"));
        j.setA3(request.getParameter("xx3"));
        j.setA4(request.getParameter("xx4"));
        j.setA5(request.getParameter("xx5"));
        j.setA6(request.getParameter("xx6"));
        j.setA7(request.getParameter("xx7"));
        j.setA8(request.getParameter("xx8"));
        j.setA9(request.getParameter("xx9"));
        j.setA10(request.getParameter("xx10"));
        j.setUsername(username);
        j.setCreatetime(new Date());
        System.out.println("j = " + j);
        List<Wenjuan> wenjuanList = wenjuanMapper.selectAll(null);
        wenjuanjieguoMapper.insertWenjuanjieguo(j);
        return "pc/submitSuccess";
    }


    @RequestMapping("pc/informIndex")
    public String informIndex(Model model, Integer p, Integer limit, String keyword) {
        limit = 10;
        if (null == p) { //默认第一页
            p = 1;
        }
        if (null == limit) { //默认每页10条
            limit = 10;
        }
        Map map = new HashMap();
        if (StringUtils.isNotEmpty(keyword)) {
            map.put("keyword", keyword);
        }
        Page<Object> pageInfo = PageHelper.startPage(p, limit, true);
        List<Inform> beanDataList = informMapper.selectAll(map);
        model.addAttribute("beanDataList", beanDataList);
        setPageParams(model, "pc/informIndex", pageInfo); //绑定分页参数
        return "pc/informIndex";
    }


    /**
     * 获取验证码
     *
     * @param model
     * @return
     */
    @RequestMapping("pc/code")
    public String code(Model model) {
        return "pc/code";
    }

    /**
     * 跳转登陆页
     *
     * @param model
     * @return
     */
    @RequestMapping("pc/login")
    public String login(Model model) {
        return "pc/login";
    }

    /**
     * 退出登录
     *
     * @param request
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("pc/loginOut")
    public String loginOut(HttpServletRequest request, Integer id, Model model) {
        HttpSession session = request.getSession();
        session.removeAttribute("loginUserinfo");
        return "pc/login";
    }

    /**
     * 登录提交
     * @param username
     * @param password
     * @param vercode
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("pc/loginSubmit")
    public ResultUtil loginSubmit(String username, String password, String vercode, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (StringUtils.isBlank(vercode)) {
            return ResultUtil.error("验证码不能为空");
        }
        String randCode = session.getAttribute("randCode").toString();
        if (!randCode.equals(vercode)) {
            return ResultUtil.error("验证码不正确");
        }
        if (StringUtils.isBlank(username)) {
            return ResultUtil.error("用户名不能为空");
        }
        if (StringUtils.isBlank(password)) {
            return ResultUtil.error("登录密码不能为空");
        }
        Map map = new HashMap();
        map.put("name", username);
        List<Userinfo> beanList = userinfoMapper.selectAll(map);
        if (beanList.size() > 0) {
            Userinfo userinfo = beanList.get(0);
            if (userinfo.getPassword().equals(password)) {
                session.setAttribute("loginUserinfo", userinfo);
                session.setAttribute("loginUserinfoID", userinfo.getId());
                return ResultUtil.ok("登录成功");
            } else {
                return ResultUtil.error("用户名或者密码错误");
            }
        } else {
            return ResultUtil.error("用户名或者密码错误");
        }

    }

    @RequestMapping("pc/register")
    public String reg() {
        return "pc/register";
    }

    @ResponseBody
    @RequestMapping("pc/registerSubmit")
    public ResultUtil regSubmit(HttpServletRequest request, Userinfo userinfo, String vercode) {
        HttpSession session = request.getSession();
        if (StringUtils.isBlank(vercode)) {
            return ResultUtil.error("验证码不能为空");
        }
        String randCode = session.getAttribute("randCode").toString();
        if (!randCode.equals(vercode)) {
            return ResultUtil.error("验证码不正确");
        }
        if (StringUtils.isBlank(userinfo.getName())) {
            return ResultUtil.error("姓名不能为空");
        }
        if (StringUtils.isBlank(userinfo.getPassword())) {
            return ResultUtil.error("登录密码不能为空");
        }
        userinfo.setCreatetime(new Date());
        userinfoMapper.insertUserinfo(userinfo);
        return ResultUtil.ok("注册成功");
    }

    /**
     * 用户个人中心
     *
     * @param model
     * @param session
     * @return
     */
    @RequestMapping("pc/userinfoCenter")
    public String userinfoCenter(Model model, HttpSession session) {
        int userInfoID = getLoginUserInfoID(session);
        Userinfo userinfo = userinfoMapper.selectUserinfoById(userInfoID);
        model.addAttribute("userinfo", userinfo);
        return "pc/userinfoCenter";
    }

    /**
     * 更新个人信息
     */
    @RequestMapping("pc/updateUserinfo")
    @ResponseBody
    public ResultUtil updateUserinfo(Userinfo userinfo, HttpSession session) {
        Date nowTime = new Date();
        userinfo.setCreatetime(nowTime);
        try {
            userinfoMapper.updateUserinfo(userinfo);
            userinfo= getLoginUserInfo(session);
            session.setAttribute("loginUserinfo", userinfo);
            return ResultUtil.ok("修改用户信息成功");
        } catch (Exception e) {
            return ResultUtil.error("修改用户信息出错,稍后再试！");
        }
    }

    /**
     * 获取前端登录用户ID
     *
     * @param session
     * @return
     */
    public int getLoginUserInfoID(HttpSession session) {
        int userID = (int) session.getAttribute("loginUserinfoID");
        return userID;
    }

    public Userinfo getLoginUserInfo(HttpSession session) {
        int userID = (int) session.getAttribute("loginUserinfoID");
        Userinfo userinfo = userinfoMapper.selectUserinfoById(userID);
        return userinfo;
    }
}
