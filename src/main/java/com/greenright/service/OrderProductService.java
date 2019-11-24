package com.greenright.service;

import java.util.List;
import com.greenright.domain.OrderProduct;

public interface OrderProductService {
  int insert(OrderProduct orderproduct) throws Exception;
  List<OrderProduct> get(int no) throws Exception;
  List<OrderProduct> getByMember(int no) throws Exception;
}
