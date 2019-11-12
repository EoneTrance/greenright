package com.greenright.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.greenright.dao.WishProductDao;
import com.greenright.domain.WishProduct;
import com.greenright.service.WishListService;

@Service
public class DefaultWishListService implements WishListService {
  @Resource private WishProductDao wishProductDao;

  @Override
  public int insert(WishProduct wishList) throws Exception {
    return wishProductDao.insert(wishList);
  }

  @Override
  public int count(int no) throws Exception {
    return wishProductDao.count(no);
  }

  @Override
  public int insertFull(WishProduct wishList) throws Exception {
    return wishProductDao.insertFull(wishList);
  }

  @Override
  public List<WishProduct> list(int no) throws Exception {
    return wishProductDao.findAll(no);
  }

  @Override
  public int delete(int no) throws Exception {
    return wishProductDao.delete(no);
  }

}
