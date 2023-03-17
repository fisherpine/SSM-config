package com.ggbz.dao;

import com.ggbz.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    //增加一本书
    int addBook(Books books);

    //删除一本书
    //首先明确这个注解是为SQL语句中参数赋值而服务的。
    int deleteBookById(@Param("bookId") int id);

    //修改一本书
    int updateBook(Books books);

    //查询一本书
    Books queryBookById(@Param("bookId") int id);

    //查询全部的书
    List<Books> queryAllBook();

    Books queryBookByName(@Param("bookName") String bookName);
}
