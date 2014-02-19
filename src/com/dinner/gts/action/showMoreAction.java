package com.dinner.gts.action;
import java.util.ArrayList;
import java.util.List;

import com.dinner.gts.dao.FoodDetailDaoImpl;
import com.dinner.gts.model.FoodDetail;
import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
public class showMoreAction extends ActionSupport{
  private List<FoodDetail> showMoreFoodlist = new ArrayList<FoodDetail>();
  private String actionType;
  private String foodName;
  private double foodPrizeFrom;
  private double foodPrizeTo;
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
    if("select".equals(actionType))
    {
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
