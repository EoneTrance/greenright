package com.greenright.util;

import com.greenright.domain.Delivery;
import com.greenright.domain.Order;

public class DeliveryUtils {

  public static Delivery createDummyDelivery(Order order) throws Exception {
    Delivery delivery = order.getDelivery();
    TempKey tempKey = new TempKey();

    delivery.setOrderNo(order.getNo());
    delivery.setInvoiceNum(tempKey.getKey(20, false));
    delivery.setCourierName("그린라이트 택배");

    return delivery;
  }
}
