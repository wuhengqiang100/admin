package com.xiaoshu.admin.entity.Echarts;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 最近一周访问的数据实体
 * 包括访问时间，访问次数的数组
 */
public class LastActivity {

    //最近的访问时间
    private String[] createDateArray;

    //最近的访问次数
    private int[] dataArray;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "MM月dd日", timezone = "GMT+8")
    public String[] getCreateDateArray() {
        return createDateArray;
    }

    public void setCreateDateArray(String[] createDateArray) {
        this.createDateArray = createDateArray;
    }







    public int[] getDataArray() {
        return dataArray;
    }

    public void setDataArray(int[] dataArray) {
        this.dataArray = dataArray;
    }
}
