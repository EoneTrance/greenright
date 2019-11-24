package com.greenright.service;

import java.util.List;
import com.greenright.domain.Order;

public interface OrderService {
  int insert(Order order) throws Exception;
  Order get(int no) throws Exception;
  List<Order> getByMember(int no) throws Exception;
}
