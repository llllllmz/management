package com.lmz.service;

import com.lmz.domain.Goods;
import com.lmz.mapper.GoodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsService {

    @Autowired
    public GoodsMapper goodsMapper;

    public List<Goods> goodsSearch() {
        return goodsMapper.goodsSearch();
    }

    public void goodsDelete(Goods goods) {
        goodsMapper.goodsDelete(goods);
    }

    public void goodsEdit(Goods goods) {
        goodsMapper.goodsEdit(goods);
    }

    public void goodsAdd(Goods goods) {
        goodsMapper.goodsAdd(goods);
    }

    public List<Goods> goodsQuery(String query) {
        return goodsMapper.goodsQuery(query);
    }
}
