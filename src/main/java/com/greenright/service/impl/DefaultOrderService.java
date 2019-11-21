package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.OrderDao;
import com.greenright.domain.Order;
import com.greenright.service.OrderService;

@Service
public class DefaultOrderService implements OrderService {

  @Resource
  private OrderDao orderDao;

  @Override
  public int insert(Order order) throws Exception {
    return orderDao.insert(order);
  }
}
