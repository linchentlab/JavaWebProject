package com.hunnx.TestUser.Service;

import com.hunnx.TestUser.Dao.UserDao;
import com.hunnx.TestUser.Entity.Pager;
import com.hunnx.TestUser.Entity.Users;

import java.util.List;

public class UserService {
    public static Users login(String name, String password) {
        Users users = UserDao.queryUser(name,password);
        return users;
    }

    public static boolean addUser(Users users) {
        int num=UserDao.addUser(users);
        if (num>0){
            return true;
        }else {
            return false;
        }
    }

    public static boolean updateUser(Users users) {
        int num =UserDao.updateUser(users);
        if(num>0){
            return true;
        }else {
            return false;
        }
    }

    public static boolean deleteUser(String name) {
        int num =UserDao.deleteUser(name);
        if(num>0){
            return true;
        }else {
            return false;
        }
    }

    public static Pager<Users> getPageUsers(int currentPage, int pageSize) {
        Pager pager=new Pager();
        int rowCount=UserDao.getCount();
        int pageCount=(rowCount/pageSize==0)?(rowCount/pageSize):(rowCount/pageSize+1);
        List<Users> list = UserDao.getList(pageSize,currentPage);
        pager.setList(list);
        pager.setCurrentPage(currentPage);
        pager.setPageCount(pageCount);
        pager.setPageSize(pageSize);
        pager.setRowCount(rowCount);
        return pager;
    }
}
