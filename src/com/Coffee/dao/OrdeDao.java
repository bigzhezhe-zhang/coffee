package com.Coffee.dao;

import com.Coffee.domain.Orde;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrdeDao {

    /**
     * 查询用户的历史订单
     * @param username
     * @return
     */
    @Select("select * from orde where username=#{username}")
    public List<Orde> findAll(String username);

    @Insert("insert into orde(username,nameid,number,price,date) values(#{username},#{nameid},#{number},#{price},#{date})")
    public void add(Orde orde);
}
