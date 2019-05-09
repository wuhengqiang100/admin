package com.xiaoshu.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

    //日期转换为年月日字符串
    public static String getStringDateShort(Date date) {
        SimpleDateFormat formatter = new SimpleDateFormat("MM月dd日");
        String dateString = formatter.format(date);
        return dateString;
    }

    //日期转换为年月日字符串
    public static String getStringDate(Date date) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(date);
        return dateString;
    }
}
