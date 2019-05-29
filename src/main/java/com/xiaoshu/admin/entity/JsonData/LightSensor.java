package com.xiaoshu.admin.entity.JsonData;

/**
 * 光照json解析实体类
 */
public class LightSensor {

    attribute attribute;
    status status;

    public com.xiaoshu.admin.entity.JsonData.attribute getAttribute() {
        return attribute;
    }

    public void setAttribute(com.xiaoshu.admin.entity.JsonData.attribute attribute) {
        this.attribute = attribute;
    }

    public com.xiaoshu.admin.entity.JsonData.status getStatus() {
        return status;
    }

    public void setStatus(com.xiaoshu.admin.entity.JsonData.status status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "LightSensor{" +
                "attribute=" + attribute +
                ", status=" + status +
                '}';
    }
}
