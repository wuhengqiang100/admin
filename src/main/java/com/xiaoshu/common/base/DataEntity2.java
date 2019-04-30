package com.xiaoshu.common.base;

import com.baomidou.mybatisplus.extension.activerecord.Model;

public class DataEntity2 <T extends Model> extends BaseEntity<T>{
    private static final long serialVersionUID = 1L;


    public DataEntity2() {
        super();
    }

    public DataEntity2(String id) {
        super(id);
    }

}
