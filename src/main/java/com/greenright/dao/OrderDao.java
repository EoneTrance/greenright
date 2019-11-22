package com.greenright.dao;

import com.greenright.domain.Order;

public interface OrderDao {
  int insert(Order order) throws Exception;
  Order findBy(int no) throws Exception;
}
