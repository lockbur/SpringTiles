/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.springtiles;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Administrator
 */
@Controller
public class TilesController extends BaseController {

    @RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
    public String show(Model model) {
        this.setMenu(Menu.DASHBOARD, model);
        model.addAttribute("title", "我是标题栏fff");
        return "/admin/dashboard";
    }

    @RequestMapping(value = "/blank/grid", method = RequestMethod.GET)
    public String blank(Model model) {
        //this.setMenu(Menu.BLANK, Menu.BLANK_GRID, model);
        model.addAttribute("title", "我是标题栏fff");
        return "/admin/blank/grid";
    }
}
