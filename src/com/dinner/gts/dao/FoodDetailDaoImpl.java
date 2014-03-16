/**
 * 
 */
package com.dinner.gts.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.dinner.gts.common.CommonSqlConst;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.FoodDetail;

/**
 * @author Administrator
 */
public class FoodDetailDaoImpl implements FoodDetailDao {

    // Session初始化
    private Session session = CommonUtil.getSessionFactory().openSession();

    @Override
    public List<FoodDetail> getAllFoodDetails(FoodDetail foodDetailForSelectQuery) {
        SQLQuery query = session.createSQLQuery(CommonSqlConst.COMMON_SQL_O15);
        query.addEntity(FoodDetail.class);
        // 设置参数
        query.setString(0, "%" + foodDetailForSelectQuery.getFoodName() + "%");
        query.setDouble(1, foodDetailForSelectQuery.getFoodMemberPriceFrom());
        query.setDouble(2, foodDetailForSelectQuery.getFoodMemberPriceTo());
        query.setString(3, foodDetailForSelectQuery.getPreferentialStatus());
        query.setString(4, foodDetailForSelectQuery.getFoodCuisineKind());
        query.setString(5, foodDetailForSelectQuery.getFoodPungencyDegree());
        @SuppressWarnings("unchecked")
        List<FoodDetail> resultFoodDetail = query.list();
        // session关闭
        CommonUtil.closeSession(session);
        return resultFoodDetail;
    }
}
