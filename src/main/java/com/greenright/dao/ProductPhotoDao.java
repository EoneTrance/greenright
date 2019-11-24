package com.greenright.dao;

import com.greenright.domain.ProductPhoto;

public interface ProductPhotoDao {
  int insert(ProductPhoto productPhoto) throws Exception;

  int delete(int no) throws Exception;

  int deleteAll(int no) throws Exception;
}
