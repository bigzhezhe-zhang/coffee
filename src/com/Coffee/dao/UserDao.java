package com.Coffee.dao;

import com.Coffee.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {

    @Select("select * from user")
    public List<User> findAll();

    @Select("select * from user where username=#{username}")
    public User findUserByUsername(String username);

    @Insert("insert into user(username,password,telephone,identity) values(#{username},#{password},#{telephone},#{identity})")
    public void addUser(User user);

    @Update("update user set telephone=#{telephone} where username=#{username}")
    public void updateByUsername(@Param("telephone") int telephone, @Param("username") String username);
}
