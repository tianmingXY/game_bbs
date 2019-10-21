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
public class TestController extends BaseController {


    /**
     * 测试页面
     *
     * @param model
     * @return
     */
    @RequestMapping("test/testPage")
    public String testPage(Model model) {
        return "pc/testPage";
    }

    @RequestMapping("test/testTable")
    public String testTable(Model model) {
        return "pc/testTable";
    }

}
