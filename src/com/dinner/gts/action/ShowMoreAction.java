package com.dinner.gts.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.dao.FoodDetailDaoImpl;
import com.dinner.gts.model.FoodDetail;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowMoreAction extends ActionSupport {

    private List<FoodDetail> showMoreFoodlist = new ArrayList<FoodDetail>();
    private String actionType;
    private String foodName;
    private double foodPrizeFrom;
    private double foodPrizeTo;
    private String foodKind;
    private String preferential;
    private String foodPungencyDegree;

    public String getActionType() {
        return actionType;
    }

    public void setActionType(String actionType) {
        this.actionType = actionType;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public double getFoodPrizeFrom() {
        return foodPrizeFrom;
    }

    public void setFoodPrizeFrom(double foodPrizeFrom) {
        this.foodPrizeFrom = foodPrizeFrom;
    }

    public double getFoodPrizeTo() {
        return foodPrizeTo;
    }

    public void setFoodPrizeTo(double foodPrizeTo) {
        this.foodPrizeTo = foodPrizeTo;
    }

    public String getFoodKind() {
        return foodKind;
    }

    public void setFoodKind(String foodKind) {
        this.foodKind = foodKind;
    }

    public String getPreferential() {
        return preferential;
    }

    public void setPreferential(String preferential) {
        this.preferential = preferential;
    }

    public String getFoodPungencyDegree() {
        return foodPungencyDegree;
    }

    public void setFoodPungencyDegree(String foodPungencyDegree) {
        this.foodPungencyDegree = foodPungencyDegree;
    }

    public List<FoodDetail> getShowMoreFoodlist() {
        return showMoreFoodlist;
    }

    public void setShowMoreFoodlist(List<FoodDetail> showMoreFoodlist) {
        this.showMoreFoodlist = showMoreFoodlist;
    }

    public String execute() throws Exception {
        if ("select".equals(actionType))
        {
            HttpServletRequest req = CommonUtil.getHttpServletRequest();
            HttpSession sessionRequest = req.getSession();

            // 把该用户选择的点菜信息存入request中
            sessionRequest.setAttribute("foodName", foodName);
            sessionRequest.setAttribute("foodPrizeFrom", foodPrizeFrom);
            sessionRequest.setAttribute("foodPrizeTo", foodPrizeTo);
            sessionRequest.setAttribute("foodKind", foodKind);
            sessionRequest.setAttribute("preferential", preferential);
            sessionRequest.setAttribute("foodPungencyDegree", foodPungencyDegree);

            FoodDetail foodDetailForSelectQuery = new FoodDetail();
            foodDetailForSelectQuery.setFoodName(foodName);
            foodDetailForSelectQuery.setFoodMemberPriceFrom(foodPrizeFrom);
            foodDetailForSelectQuery.setFoodMemberPriceTo(foodPrizeTo);
            foodDetailForSelectQuery.setPreferentialStatus(preferential);
            foodDetailForSelectQuery.setFoodPungencyDegree(foodPungencyDegree);
            showMoreFoodlist = new FoodDetailDaoImpl().getAllFoodDetails(foodDetailForSelectQuery);

        }
        return SUCCESS;
    }

}
