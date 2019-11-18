package com.greenright.service;

import java.util.List;
import com.greenright.domain.Basket;

public interface BasketService {
  List<Basket> list(int no) throws Exception;
  Basket get(Basket basket) throws Exception;
  int insert(Basket basket) throws Exception;
  int update(Basket basket) throws Exception;
  int delete(Basket basket) throws Exception;
}
