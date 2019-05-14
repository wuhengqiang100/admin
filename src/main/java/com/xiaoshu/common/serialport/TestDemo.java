package com.xiaoshu.common.serialport;

public class TestDemo {
    public static void main(String[] args) {

        Thread thread=new Thread(new SerialPortTest1());
        thread.start();
    }
}
