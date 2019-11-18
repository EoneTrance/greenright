package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Basket;

public interface BasketDao {
  int insert(Basket basket) throws Exception;
  List<Basket> findAll(int no) throws Exception;
  List<Basket> findWithAll(int no) throws Exception;
  Basket findBy(Basket basket) throws Exception;
  int update(Basket basket) throws Exception;
  int delete(Basket basket) throws Exception;
}
