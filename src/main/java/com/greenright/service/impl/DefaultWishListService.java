package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.WishListDao;
import com.greenright.domain.WishList;
import com.greenright.service.WishListService;

@Service
public class DefaultWishListService implements WishListService {
  @Resource private WishListDao wishListDao;

  @Override
  public int insert(WishList wishList) throws Exception {
    return wishListDao.insert(wishList);
  }

  @Override
  public int count(int no) throws Exception {
    return wishListDao.count(no);
  }

  @Override
  public int insertFull(WishList wishList) throws Exception {
    return wishListDao.insertFull(wishList);
  }

  @Override
  public List<WishList> list(int no) throws Exception {
    return wishListDao.findAll(no);
  }
}
