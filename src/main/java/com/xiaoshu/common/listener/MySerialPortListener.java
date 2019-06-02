package com.xiaoshu.common.listener;

import com.xiaoshu.common.serialport.RunPort;
import org.springframework.context.ApplicationListener;

/**
 * 系统监听串口时间的Listener
 */
public class MySerialPortListener implements ApplicationListener<MyEvent> {

    @Override
    public void onApplicationEvent(MyEvent myEvent) {

        RunPort.run();//串口读取数据监听
        System.out.println("%s监听到事件源：%s."+ MySerialPortListener.class.getName()+myEvent.getSource());

    }
}
