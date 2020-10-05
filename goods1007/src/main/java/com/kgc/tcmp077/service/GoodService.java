package com.kgc.tcmp077.service;

import com.kgc.tcmp077.pojo.Good;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-06 0:36
 */
public interface GoodService {
    List<Good> goodList(Integer goodsdistrict);
    void updGood(Good good);
}
