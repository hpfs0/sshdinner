package com.dinner.gts.action;

import com.opensymphony.xwork2.ActionSupport;

public class MainAction extends ActionSupport {

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 8673172990223518035L;

    public String execute() {
        String a = "aaa";
        System.out.println(a);
        return SUCCESS;
    }

}
