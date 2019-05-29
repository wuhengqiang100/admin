package com.xiaoshu.admin.entity.JsonData;

public class attribute {
    private String Type;
    private String Model;
    private String Precision;
    private String Range;
    private String Working_Voltage;

    public String getType() {
        return Type;
    }

    public void setType(String type) {
        Type = type;
    }

    public String getModel() {
        return Model;
    }

    public void setModel(String model) {
        Model = model;
    }

    public String getPrecision() {
        return Precision;
    }

    public void setPrecision(String precision) {
        Precision = precision;
    }

    public String getRange() {
        return Range;
    }

    public void setRange(String range) {
        Range = range;
    }

    public String getWorking_Voltage() {
        return Working_Voltage;
    }

    public void setWorking_Voltage(String working_Voltage) {
        Working_Voltage = working_Voltage;
    }

    @Override
    public String toString() {
        return "attribute{" +
                "Type='" + Type + '\'' +
                ", Model='" + Model + '\'' +
                ", Precision='" + Precision + '\'' +
                ", Range='" + Range + '\'' +
                ", Working_Voltage='" + Working_Voltage + '\'' +
                '}';
    }
}
