<<<<<<< HEAD
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
=======
package com.greenright.dao;

import java.util.List;
import java.util.Map;
import com.greenright.domain.Faq;

public interface FaqDao {

  int insert(Faq faq) throws Exception;

  List<Faq> findAll() throws Exception;

  Faq findBy(int no) throws Exception;

  int update(Faq faq) throws Exception;

  int delete(int no) throws Exception;

  List<Faq> findByKeyword(Map<String, String> param) throws Exception;
}
>>>>>>> f786826130ce28732ecc9270edafeb41088f606f
