package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.OrderProductDao;
import com.greenright.domain.OrderProduct;
import com.greenright.service.OrderProductService;

@Service
public class DefaultOrderProductService implements OrderProductService {

  @Resource
  private OrderProductDao orderProductDao;

  @Override
  public int insert(OrderProduct orderProduct) throws Exception {
    return orderProductDao.insert(orderProduct);
  }
}
