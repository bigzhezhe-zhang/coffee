package com.Coffee.dao;

import com.Coffee.domain.Orde;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
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
    @Results(value = {
            @Result(property = "commodity",column = "nameid",one = @One(select = "com.Coffee.dao.CommodityDao.findById",fetchType = FetchType.EAGER))
    })
    public List<Orde> findAll(String username);

    @Insert("insert into orde(username,nameid,number,price,date) values(#{username},#{nameid},1,#{price},#{date})")
    public void add(Orde orde);

//    @Select("select * from orde where username=#{username}")
//    public List<Orde> findHorder(String username);
}
