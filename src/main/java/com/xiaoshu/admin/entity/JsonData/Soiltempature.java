package com.xiaoshu.admin.entity.JsonData;

/**
 * 湿度json解析实体类
 */
public class Soiltempature {

    status status;

    public com.xiaoshu.admin.entity.JsonData.status getStatus() {
        return status;
    }

    public void setStatus(com.xiaoshu.admin.entity.JsonData.status status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Soiltempature{" +
                "status=" + status +
                '}';
    }
}
