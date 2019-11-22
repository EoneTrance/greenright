package com.greenright.service;

import com.greenright.domain.Order;

public interface OrderService {
  int insert(Order order) throws Exception;
  Order findBy(int no) throws Exception;
}
