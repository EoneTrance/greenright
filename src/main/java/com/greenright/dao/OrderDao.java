package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Order;

public interface OrderDao {
  int insert(Order order) throws Exception;
  Order findBy(int no) throws Exception;
  List<Order> findByMember(int no) throws Exception;
}
