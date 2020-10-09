package com.Coffee.dao;

import com.Coffee.domain.Commodity;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommodityDao {

    @Select("select * from commodity")
    public List<Commodity> findAll();

    @Select("select * from commodity where id=#{nameid}")
    public Commodity findById(Integer nameid);
}
