package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.greenright.dao.DeliveryDao;
import com.greenright.dao.OrderDao;
import com.greenright.dao.OrderProductDao;
import com.greenright.domain.Delivery;
import com.greenright.domain.Order;
import com.greenright.domain.OrderProduct;
import com.greenright.service.OrderService;
import com.greenright.util.DeliveryUtils;

@Service
public class DefaultOrderService implements OrderService {

  @Resource
  private OrderDao orderDao;
  
  @Resource
  private DeliveryDao deliveryDao;
  
  @Resource
  private OrderProductDao orderProductDao;

  @Transactional
  @Override
  public int insert(Order order) throws Exception {
    int result = orderDao.insert(order);
    if (result == 1) {
      Delivery delivery = DeliveryUtils.createDummyDelivery(order);
      deliveryDao.insert(delivery);
      
      List<OrderProduct> orderProducts = order.getOrderProducts();
      for (OrderProduct orderProduct : orderProducts) {
        orderProduct.setOrderNo(order.getNo());
        orderProductDao.insert(orderProduct);
      }
    }
    return result;
  }

  @Override
  public Order findBy(int no) throws Exception {
    return orderDao.findBy(no);
  }
}
