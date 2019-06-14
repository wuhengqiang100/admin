package com.xiaoshu.common.timing;

import com.xiaoshu.common.serialport.RunPort;

public class timingPortRead {
    public static void run(){
        // run in a second
        final long timeInterval = 1000;
        Runnable runnable = new Runnable() {
            public void run() {
                while (true) {
                    RunPort.run();
                    // ------- code for task to run
//                    System.out.println("Hello !!");
                    // ------- ends here
                    try {
                        Thread.sleep(timeInterval);//睡眠1s
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        };
        Thread thread = new Thread(runnable);
        thread.start();
    }
}
