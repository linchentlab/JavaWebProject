package com.hunnx.TestUser.Dao;


import com.hunnx.TestUser.Entity.Pager;
import com.hunnx.TestUser.Entity.Users;
import com.hunnx.TestUser.Util.C3p0Utils;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UsersDao {
    public static Pager<Users> getPageUsers(int currentPage, int pageSize) {
        List<Users> lists = new ArrayList<>();
        int count = getCount();
        Pager<Users> pager = new Pager<>(currentPage, pageSize, count);
        try {
            Connection conn = C3p0Utils.getConnection();
            String sql = "select * from users limit ?,?";
            PreparedStatement preStmt = conn.prepareStatement(sql);
            preStmt.setInt(1, (currentPage - 1) * pageSize);
            preStmt.setInt(2, pageSize);
            ResultSet rs = preStmt.executeQuery();
            while (rs.next()) {
                Users users = new Users();
                String id = rs.getString("id");
                String name = rs.getString("name");
                String psw = rs.getString("password");
                String email = rs.getString("email");
                Date birthday = rs.getDate("birthday");
                users.setId(id);
                users.setName(name);
                users.setPassword(psw);
                users.setEmail(email);
                users.setBirthday(birthday);
                lists.add(users);
            }
            pager.setList(lists);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pager;
    }

    private static int getCount() {
        int count=0;
        try{
            Connection conn = C3p0Utils.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from users");
            rs.last();
            count=rs.getRow();
        }catch (SQLException e) {
            e.printStackTrace();
        }finally {
            return count;
        }
    }
}
