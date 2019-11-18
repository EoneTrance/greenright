package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.greenright.dao.BasketDao;
import com.greenright.domain.Basket;
import com.greenright.service.BasketService;

@Service
public class DefaultBasketService implements BasketService {

  @Resource
  private BasketDao basketDao;

  @Override
  public List<Basket> list(int no) throws Exception {
    return basketDao.findAll(no);
  }
  
  @Override
  public Basket get(Basket basket) throws Exception {
    Basket foundBasket = basketDao.findBy(basket);
    if (foundBasket == null) {
      throw new Exception("해당 번호의 데이터가 없습니다.");
    }
    return foundBasket;
  }

  @Transactional
  @Override
  public int insert(Basket basket) throws Exception {
    return basketDao.insert(basket);
  }

  @Override
  public int update(Basket basket) throws Exception {
    return basketDao.update(basket);
  }

  @Override
  public int delete(Basket basket) throws Exception {
    return basketDao.delete(basket);
  }
  
}
