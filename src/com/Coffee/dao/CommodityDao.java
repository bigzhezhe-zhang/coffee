package com.Coffee.dao;

import com.Coffee.domain.Commodity;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommodityDao {

    @Select("select * from commodity")
    public List<Commodity> findAll();

    @Select("select * from commodity where id=#{nameid}")
    public Commodity findById(Integer nameid);

    @Select("select * from commodity")
    public List<Commodity> commodity(String name);

    @Insert("insert into commodity (id,name,number,price) values(#{id},#{name},#{number},#{price})")
    public int commodity1(Commodity commodity);

    @Update("update commodity set id=#{id},name=#{name},number=#{number},price=#{price} where id=#{id}")
    public int commodity2(Commodity commodity);

    @Delete("delete from commodity where id=#{id}")
    public int commodity3(Integer id);
}
