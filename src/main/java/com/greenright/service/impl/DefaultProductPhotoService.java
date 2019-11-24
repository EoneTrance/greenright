package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.ProductPhotoDao;
import com.greenright.service.ProductPhotoService;

@Service
public class DefaultProductPhotoService implements ProductPhotoService {
  @Resource
  private ProductPhotoDao productPhotoDao;

  @Override
  public void deletephotos(int no) throws Exception {
    productPhotoDao.delete(no);
  }

}
