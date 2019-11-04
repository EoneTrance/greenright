package com.greenright.dao;

import com.greenright.domain.ProductFile;

public interface ProductFileDao {
  int insert(ProductFile productFile) throws Exception;
  int insertTrue(ProductFile productFile) throws Exception;
}
