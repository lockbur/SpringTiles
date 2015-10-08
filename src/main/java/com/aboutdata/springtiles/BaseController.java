/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.springtiles;

import java.util.ArrayList;
import java.util.List;
import org.springframework.ui.Model;

/**
 *
 * @author Administrator
 */
public class BaseController {

    /***
     *  
     * @param parent
     *          父菜单
     * @param menu
     *          当前操作菜单
     * @param model 
     */
    public void setMenu(Menu parent, Menu menu, Model model) {
        List<String> menus = new ArrayList<String>();
        if (parent != null) {
            menus.add(parent.getKey());
        }
        if (menu != null) {
            menus.add(menu.getKey());
        }
        model.addAttribute(Menu.CURRENT_MENU_ATTRIBUTE, menus);
    }
    
    /***
     *  
     * @param parent
     *          父菜单
     * @param model 
     */
     public void setMenu(Menu parent, Model model) {
        List<String> menus = new ArrayList<String>();
        if (parent != null) {
            menus.add(parent.getKey());
        }
        model.addAttribute(Menu.CURRENT_MENU_ATTRIBUTE, menus);
    }
}
