package com.kgc.tcmp077.controller;

import com.kgc.tcmp077.pojo.Good;
import com.kgc.tcmp077.service.GoodService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author shkstart
 * @create 2020-10-06 0:39
 */
@Controller
public class GoodController {
    @Resource
    GoodService goodService;
    @RequestMapping("/")
    public String index(){
        return "index";
    }
    @RequestMapping("/select")
    public String select(Integer goodsdistrict, Model model,HttpSession session){
        List<Good> goods = goodService.goodList(goodsdistrict);
        model.addAttribute("goods",goods);
        session.setAttribute("goodsdistrict",goodsdistrict);
        return "select";
    }
    @RequestMapping("/toUpd")
    @ResponseBody
    public Map<String,Object> toUpd(String id, String goodname, String goodsprice, String goodscount, String billstatus, HttpSession session){
        Map<String,Object> map=new HashMap<>();
        if(id!=null&&goodname!=null&&goodsprice!=null&&goodscount!=null&&billstatus!=null){
            map.put("status","true");
            session.setAttribute("id",id);
            session.setAttribute("goodname",goodname);
            session.setAttribute("goodsprice",goodsprice);
            session.setAttribute("goodscount",goodscount);
            System.out.println(billstatus);
            session.setAttribute("billstatus",billstatus);
            return map;
        }else{
            map.put("status","false");
        }
        return map;
    }
    @RequestMapping("/doUpd")
    public String doUpd(Good good,Integer goodsdistrict){
        goodService.updGood(good);
        return "redirect:/select?goodsdistrict="+goodsdistrict;
    }
}
