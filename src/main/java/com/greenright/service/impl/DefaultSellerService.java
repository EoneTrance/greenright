package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.SellerDao;
import com.greenright.domain.Seller;
import com.greenright.service.SellerService;

@Service
public class DefaultSellerService implements SellerService {

  public static final String COMPLETE = "COMPLETE";
  
  @Resource
  private SellerDao sellerDao;

  @Override
  public List<Seller> list(String keyword) throws Exception {
    return sellerDao.findAll(keyword);
  }


  @Override
  public Seller get(int no) throws Exception {
    return sellerDao.findBy(no);
  }

  @Override
  public Seller getInfoAll(Seller seller) throws Exception {
    return sellerDao.findInfoAll(seller);
  }
  
  @Override
  public Seller getTel(String tel) throws Exception {
    return sellerDao.findTel(tel);
  }
  
  @Override
  public Seller getAccount(String accountNum) {
    return sellerDao.findAccount(accountNum);
  }

  @Override
  public int insert(Seller seller) throws Exception {
    return (sellerDao.insert(seller));
  }

  @Override
  public int update(Seller seller) throws Exception {
    return sellerDao.update(seller);
  }

  @Override
  public int delete(int no) throws Exception {
    return sellerDao.delete(no);
  }
}
