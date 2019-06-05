package com.xiaoshu;

import com.xiaoshu.common.timing.timingPortRead;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement
@SpringBootApplication
public class AdminApplication {

    public static void main(String[] args) {
//        ConfigurableApplicationContext context= SpringApplication.run(AdminApplication.class, args);
        SpringApplication.run(AdminApplication.class, args);

//        RunPort.run();//监听串口数据
        timingPortRead.run();//后台串口数据监控


       /* context.addApplicationListener(new MySerialPortListener());
        context.publishEvent(new MyEvent("测试事件."));*/
//        RunPort.run();//串口监听
       /* Thread thread=new Thread(new SerialPortTest1());
        thread.start();*/
    }
}


