package com.xiaoshu.common.listener;

import com.xiaoshu.common.serialport.RunPort;
import org.springframework.context.ApplicationEvent;

@SuppressWarnings("serial")
public class MyEvent extends ApplicationEvent {
    public MyEvent(Object source) {
        super(source);
        RunPort.run();//串口读取数据监听
    }
}
