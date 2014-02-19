package com.dinner.gts.dao;

import java.util.List;

import com.dinner.gts.model.FoodDetail;

public interface FoodDetailDao {

    /**
     * 取得反馈表里所有信息
     * 
     * @return 反馈表里所有记录
     */
    public List<FoodDetail> getAllFoodDetails(FoodDetail foodDetailForSelectQuery);

}
