package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.CategoryDao;
import com.greenright.domain.Category;
import com.greenright.service.CategoryService;

// BoardService 기본 구현체 
//
@Service
public class DefaultCategoryService implements CategoryService {

  @Resource
  private CategoryDao categoryDao;


  @Override
  public void insert(Category category) throws Exception {
    categoryDao.insert(category);
  }

  @Override
  public void delete(int no) throws Exception {
    if (categoryDao.delete(no) == 0) {
      throw new Exception("해당 데이터가 없습니다.");
    }
  }


  @Override
  public List<Category> findAll() throws Exception {
    return categoryDao.findAll();
  }
  
  @Override
  public Category get(int no) throws Exception {
    Category category = categoryDao.findBy(no);
    if (category == null) {
      throw new Exception("해당 번호의 데이터가 없습니다!");
    } 
//    categoryDao.increaseViewCount(no);
    return category;
  }

  @Override
  public void update(Category category) throws Exception {
    categoryDao.update(category);
  }
}
