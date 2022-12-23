package com.hunnx.TestUser.Util;

import com.hunnx.TestUser.Entity.Users;
import jdk.swing.interop.SwingInterOpUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;
import java.util.List;

public class Test {
    public static void main(String[] args) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql="select * from users";
        List<Users> list= (List) queryRunner.query(sql, new BeanHandler(Users.class));
        for(Users users : list){
            System.out.println(users.getId()+users.getName()+users.getPassword());}
            System.out.println("111111");
    }
}