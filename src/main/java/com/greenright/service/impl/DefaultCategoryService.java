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
  public List<Category> list() throws Exception {
    return categoryDao.findAll();
  }

}
