package com.greenright.dao;

import com.greenright.domain.OrderProduct;

public interface OrderProductDao {
  int insert(OrderProduct orderProduct) throws Exception;
}
