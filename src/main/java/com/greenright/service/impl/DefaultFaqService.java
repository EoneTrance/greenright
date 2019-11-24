package com.greenright.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.greenright.dao.FaqDao;
import com.greenright.domain.Faq;
import com.greenright.service.FaqService;

@Service
public class DefaultFaqService implements FaqService {

  @Autowired
  private FaqDao faqDao;

  @Override
  public List<Faq> list() throws Exception {
    return faqDao.findAll();
  }

  @Override
  public Faq get(int no) throws Exception {
    if (faqDao == null) {
      throw new Exception("해당 번호의 데이터가 없습니다.");
    }
    return faqDao.findBy(no);
  }

  @Override
  public void update(Faq faq) throws Exception {
    faqDao.update(faq);
  }

  @Override
  public void insert(Faq faq) throws Exception {
    faqDao.insert(faq);
  }

  @Override
  public void delete(int no) throws Exception {
    if (faqDao.delete(no) == 0) {
      throw new Exception("해당데이터가 없습니다.");
    }
  }

  @Override
  public List<Faq> search(String keyword, String questionType) throws Exception {
    HashMap<String, String> param = new HashMap<>();
    param.put("keyword", keyword);
    param.put("questionType", questionType);

    return faqDao.findByKeyword(param);
  }


  // @Override
  // public List<Faq> search(String keyword) throws Exception {
  // return faqDao.findByKeyword(keyword);
  // }
}
