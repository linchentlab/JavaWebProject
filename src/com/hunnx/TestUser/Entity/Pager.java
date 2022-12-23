package com.hunnx.TestUser.Entity;

import java.util.List;

public class Pager<E> {
    private int pageSize;
    private int rowCount;
    private int currentPage;
    private List<Users> list;
    private int pageCount;
    private int startIndex;

    public Pager() {

    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getRowCount() {
        return rowCount;
    }

    public void setRowCount(int rowCount) {
        this.rowCount = rowCount;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public List<Users> getList() {
        return list;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    public Pager(int currentPage, int pageSize, int rowCount){
        this.pageSize=pageSize;
        this.rowCount=rowCount;
        this.currentPage=currentPage;
        this.pageCount=(this.rowCount/this.pageSize==0)?(this.rowCount/this.pageSize):(this.rowCount/this.pageSize+1);
        this.startIndex=((this.currentPage-1)*this.pageSize);
    }

    public void setList(List<Users> list) {
        this.list=list;
    }
}
