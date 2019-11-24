package com.greenright.dao;

import java.util.List;
import com.greenright.domain.OrderProduct;

public interface OrderProductDao {
  int insert(OrderProduct orderProduct) throws Exception;
  List<OrderProduct> findBy(int no) throws Exception;
  List<OrderProduct> findByMember(int no) throws Exception;
}
