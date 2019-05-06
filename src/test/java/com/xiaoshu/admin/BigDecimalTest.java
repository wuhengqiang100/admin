package com.xiaoshu.admin;

import java.math.BigDecimal;

public class BigDecimalTest {

    public static void main(String[] args) {
        BigDecimal result=new BigDecimal("0.00");
        BigDecimal add01=new BigDecimal("1.00");
        BigDecimal add02=new BigDecimal("1.00");
        result=add01.subtract(add02);
        System.out.println(result);
    }
}
