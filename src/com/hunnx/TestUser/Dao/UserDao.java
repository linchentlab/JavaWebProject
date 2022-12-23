package com.hunnx.TestUser.Dao;

import com.hunnx.TestUser.Entity.Users;
import com.hunnx.TestUser.Util.C3p0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserDao {
    public static Users queryUser(String name, String password) {
        Users user = null;
        QueryRunner queryRunner = new QueryRunner(C3p0Utils.getDataSource());
        String sql="select * from users where name=? and password=?";
        try{
            user = (Users) queryRunner.query(sql,new BeanHandler(Users.class),name,password);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return user;
    }
    @SuppressWarnings("unchecked")
    public static List<Users> queryUsers(){
        List<Users> users=new ArrayList<>();
        QueryRunner queryRunner=new QueryRunner(C3p0Utils.getDataSource());
        String sql="select * from users";
        try{
                users= (List<Users>) queryRunner.query(sql,new BeanHandler<>(Users.class));
        }catch (SQLException e){
            e.printStackTrace();
        }
        return users;
    }

    public static int addUser(Users users) {
        int num=0;
        QueryRunner queryRunner=new QueryRunner(C3p0Utils.getDataSource());
        String sql="insert into users(name,password,email,birthday) values(?,?,?,?)";
        try{
            num=queryRunner.update(sql,users.getName(),users.getPassword(),users.getEmail(),users.getBirthday());
        }catch (SQLException e){
            e.printStackTrace();
        }
        return num;
    }

    public static int updateUser(Users users) {
        int num=0;
        QueryRunner queryRunner=new QueryRunner(C3p0Utils.getDataSource());
        String sql="update users set password=?,email=?,birthday=? where name=?";
        try{
            num=queryRunner.update(sql,users.getPassword(),users.getEmail(),users.getBirthday(),users.getName());
        }catch (SQLException e){
            e.printStackTrace();
        }
        return num;
    }

    public static int deleteUser(String name) {
        int num=0;
        QueryRunner queryRunner=new QueryRunner(C3p0Utils.getDataSource());
        String sql="delete from users where name=?";
        try{
            num=queryRunner.update(sql,name);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return num;
    }

    public static List<Users> getList(int pageSize, int currentPage) {
        List<Users> lists = new ArrayList<>();
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
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lists;
    }

    public static int getCount() {
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
