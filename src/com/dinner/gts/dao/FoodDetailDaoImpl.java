/**
 * 
 */
package com.dinner.gts.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.FoodDetail;

/**
 * @author yux
 */
public class FoodDetailDaoImpl implements FoodDetailDao {

    // Session初始化
    private Session session = CommonUtil.getSessionFactory().openSession();

    // DetachedCriteria实现动态查询
    DetachedCriteria detachedCrit =
            DetachedCriteria.forClass(FoodDetail.class);

    @SuppressWarnings("unchecked")
    @Override
    public List<FoodDetail> getAllFoodDetails(FoodDetail foodDetailForSelectQuery) {
        Criteria criteria = detachedCrit.getExecutableCriteria(session);
        if (null != foodDetailForSelectQuery.getFoodName()
                && foodDetailForSelectQuery.getFoodName().trim().length() > 0 &&
                !foodDetailForSelectQuery.getFoodName().trim().equals("关键词")) {
            detachedCrit.add(Restrictions.like("foodName", foodDetailForSelectQuery.getFoodName()
                    .trim(), MatchMode.ANYWHERE));
        }
        if (foodDetailForSelectQuery.getFoodMemberPriceFrom() > 0.0) {
            detachedCrit.add(Restrictions.ge("foodMemberPrice",
                    foodDetailForSelectQuery.getFoodMemberPriceFrom()));
        }
        if (foodDetailForSelectQuery.getFoodMemberPriceTo() > 0.0) {
            detachedCrit.add(Restrictions.le("foodMemberPrice",
                    foodDetailForSelectQuery.getFoodMemberPriceTo()));
        }
        if (null != foodDetailForSelectQuery.getPreferentialStatus()) {
            detachedCrit.add(Restrictions.eq("preferentialStatus",
                    foodDetailForSelectQuery.getPreferentialStatus()));
        }
        if (null != foodDetailForSelectQuery.getFoodCuisineKind()) {
            detachedCrit.add(Restrictions.eq("foodCuisineKind",
                    foodDetailForSelectQuery.getFoodCuisineKind()));
        }
        if (null != foodDetailForSelectQuery.getFoodPungencyDegree()) {
            detachedCrit.add(Restrictions.eq("foodPungencyDegree",
                    foodDetailForSelectQuery.getFoodPungencyDegree()));
        }
        List<FoodDetail> foodDetailsList = new ArrayList<FoodDetail>();

        foodDetailsList = criteria.list();
        return foodDetailsList;
    }
}
