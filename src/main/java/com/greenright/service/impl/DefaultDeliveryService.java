package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.DeliveryDao;
import com.greenright.domain.Delivery;
import com.greenright.service.DeliveryService;

@Service
public class DefaultDeliveryService implements DeliveryService {

  @Resource
  private DeliveryDao deliveryDao;

  @Override
  public int insert(Delivery delivery) throws Exception {
    return deliveryDao.insert(delivery);
  }
}
