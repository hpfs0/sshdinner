package com.dinner.gts.common;

public class CommonStringUtil {

    /**
     * 将null转换为空字符
     * 
     * @param s 待转换的字符串
     * @return 转换后的字符串
     */
    public static String convertNullToEmpty(String s) {
        return s == null ? "" : s;
    }
}
