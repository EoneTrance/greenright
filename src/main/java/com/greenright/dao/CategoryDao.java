package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Category;

// DAO 사용 규칙을 정의한다.
public interface CategoryDao {
  int insert(Category category) throws Exception;
  List<Category> findAll() throws Exception;
  Category findBy(int no) throws Exception;
  int update(Category category) throws Exception;
  int delete(int no) throws Exception;

}








