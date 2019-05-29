package com.xiaoshu.common.serialport;

public class TestDemo {
    public static void main(String[] args) {
        if (ListPort.listPorts()){
            if (ListPort.listCommPorts()){

                Thread thread=new Thread(new SerialPortTest1());
                thread.start();
            }else{
                System.out.println("没有可用端口!");
            }
        }else{
            System.out.println("没有可用端口!");
        }

    }
}
