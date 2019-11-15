package com.greenright.dao;

import java.util.List;
import java.util.Map;
import com.greenright.domain.Faq;

public interface FaqDao {
  
  int insert(Faq faq) throws Exception;
  List<Faq> findAll(Map<String,Object> param) throws Exception;
  Faq findBy(int no) throws Exception;
  int update(Faq faq) throws Exception;
  int delete(int no) throws Exception;
  int countAll(Map<String,Object> param) throws Exception;
}
