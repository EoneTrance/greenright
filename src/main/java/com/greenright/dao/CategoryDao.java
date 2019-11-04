package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Category;

// DAO 사용 규칙을 정의한다.
public interface CategoryDao {

  List<Category> findAll() throws Exception;
  int insert(Category category) throws Exception;
}








