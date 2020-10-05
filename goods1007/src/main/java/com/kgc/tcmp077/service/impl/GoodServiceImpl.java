package com.kgc.tcmp077.service.impl;

import com.kgc.tcmp077.mapper.GoodMapper;
import com.kgc.tcmp077.pojo.Good;
import com.kgc.tcmp077.pojo.GoodExample;
import com.kgc.tcmp077.service.GoodService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-06 0:36
 */
@Service("goodService")
public class GoodServiceImpl implements GoodService {
    @Resource
    GoodMapper goodMapper;
    @Override
    public List<Good> goodList(Integer goodsdistrict) {
        GoodExample goodExample=new GoodExample();
        GoodExample.Criteria criteria = goodExample.createCriteria();
        criteria.andGoodsdistrictEqualTo(goodsdistrict);
        return goodMapper.selectByExample(goodExample);
    }

    @Override
    public void updGood(Good good) {
        goodMapper.updateByPrimaryKeySelective(good);
    }
}
