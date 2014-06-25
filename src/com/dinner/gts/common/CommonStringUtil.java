package com.dinner.gts.common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CommonStringUtil {

	/**
	 * 将null转换为空字符
	 * 
	 * @param s
	 *            待转换的字符串
	 * @return 转换后的字符串
	 */
	public static String convertNullToEmpty(String s) {
		return s == null ? "" : s;
	}

	/***
	 * 判断是否为空字符串
	 * 
	 * @param s
	 *            待判断的字符串
	 * @return 判断结果
	 */
	public static boolean isEmpty(String s) {

		if (null == s || "".equals(s)) {
			return true;
		}
		return false;
	}

	/***
	 * 判断是否不是空字符串
	 * 
	 * @param s
	 *            待判断的字符串
	 * @return 判断结果
	 */
	public static boolean isNotEmpty(String s) {
		return !isEmpty(s);
	}

	/***
	 * 字符串转日期
	 * 
	 * @param s
	 *            带转换字符串
	 * @param format
	 *            格式化类型，例：YYYYMMDD
	 * @return 日期
	 */
	public static Date stringToDate(String s, String format) {
		if (isEmpty(s)) {
			return null;
		}
		if (isEmpty(format)) {
			format = "YYYYMMDD";
		}
		SimpleDateFormat formatDate = new SimpleDateFormat(format);
		Date date = null;
		try {
			date = formatDate.parse(s);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

}
