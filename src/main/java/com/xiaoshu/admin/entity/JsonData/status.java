package com.xiaoshu.admin.entity.JsonData;

public class status {
    private String WorkModel;
    private String Value;

    public String getWorkModel() {
        return WorkModel;
    }

    public void setWorkModel(String workModel) {
        WorkModel = workModel;
    }

    public String getValue() {
        return Value;
    }

    public void setValue(String value) {
        Value = value;
    }

    @Override
    public String toString() {
        return "status{" +
                "WorkModel='" + WorkModel + '\'' +
                ", Value='" + Value + '\'' +
                '}';
    }
}
