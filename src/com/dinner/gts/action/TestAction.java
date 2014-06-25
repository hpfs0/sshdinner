package com.dinner.gts.action;


import com.dinner.gts.model.Order;
import com.dinner.gts.service.OrderService;

public class TestAction  {

	public static void main(String args[]){
    	String orderId = "1234567890";
    	
    	OrderService orderService = new OrderService();
    	Order order = orderService.getOrderInfoByOrderId(orderId);
    	
    	System.out.println(order.getOrderId());
    	System.out.println(order.getOrderMemberId());
    	System.out.println(order.getOrderType());
    	System.out.println(order.getOrderPrice());
    	System.out.println(order.getRegistTime());
    	System.out.println(order.getUpdateTime());
    	System.out.println(order.getDeleteFlg());
    	
    }
}
