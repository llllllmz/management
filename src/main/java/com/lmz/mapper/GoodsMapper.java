package com.lmz.mapper;

import com.lmz.domain.Goods;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GoodsMapper {
    List<Goods> goodsSearch();

    void goodsDelete(Goods goods);

    void goodsEdit(Goods goods);

    void goodsAdd(Goods goods);

    List<Goods> goodsQuery(String query);
}
