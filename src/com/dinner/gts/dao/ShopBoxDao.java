package com.dinner.gts.dao;

import java.util.List;

import com.dinner.gts.model.ShopBox;

/**
 * @author yangdw
 */
public interface ShopBoxDao {

    /**
     * 根据会员ID取得ShopBox表中该会员的购物车信息(7天之内有效)
     * 
     * @param Id 购物车ID
     * @return 购物车信息
     */
    public List<ShopBox> getShopBox(ShopBox shopBox);
}
