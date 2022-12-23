package com.hunnx.TestUser.Util;

import org.apache.commons.dbutils.QueryRunner;

public class TestConn {
    public static void main(String[] args) {
        QueryRunner result = new QueryRunner(C3p0Utils.getDataSource());
        if (result != null) {
            System.out.println("成功");
        } else {
            System.out.println("shibai");
        }
    }
}
