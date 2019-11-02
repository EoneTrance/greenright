package com.greenright.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.greenright.dao.FAQDao;
import com.greenright.domain.FAQ;
import com.greenright.service.FAQService;

@Service
public class FAQServiceImpl implements FAQService{

  @Autowired
  private FAQDao faqDao;

  @Override
  public List<FAQ> list() throws Exception {
    return faqDao.findAll();
  }

  @Override
  public FAQ get(int no) throws Exception {
    if(faqDao ==null ) {
      throw new Exception("해당 번호의 데이터가 없습니다.");
    }
    return faqDao.findBy(no);
  }

  @Override
  public void update(FAQ faq) throws Exception {
    faqDao.update(faq);
  }

  @Override
  public void insert(FAQ faq) throws Exception {
    faqDao.insert(faq);
  }

  @Override
  public void delete(int no) throws Exception {
    if(faqDao.delete(no) == 0) {
      throw new Exception ("해당데이터가 없습니다.");
    }
  }
  
  
  @Override
  public List<FAQ> search(String keyword) throws Exception {
    return faqDao.findByKeyword(keyword);
  }
}
