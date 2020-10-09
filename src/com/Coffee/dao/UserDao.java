package com.Coffee.dao;

import com.Coffee.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {

    /**
     * 查询所有用户
     * @return
     */
    @Select("select * from user")
    public List<User> findAll();

    /**
     * 根据用户名查询所有用户
     * @param username
     * @return
     */
    @Select("select * from user where username=#{username}")
    public User findUserByUsername(String username);

    /**
     * 用户注册
     * @param user
     */
    @Insert("insert into user(username,password,telephone,identity) values(#{username},#{password},#{telephone},#{identity})")
    public void addUser(User user);

    /**
     * 按照用户名修改联系方式
     * @param telephone
     * @param username
     */
    @Update("update user set telephone=#{telephone} where username=#{username}")
    public void updateByUsername(@Param("telephone") int telephone, @Param("username") String username);

    @Select("select * from user")
    public List<User> user (String username);

    @Update("update user set password=#{password},telephone=#{telephone} where id=#{id}")
    public int user1(@Param("password")String password, @Param("telephone")String telephone, @Param("id")Integer id);

    @Delete("delete from user where id=#{id}")
    public int user2(@Param("id") Integer id);
}
