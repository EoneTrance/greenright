package com.greenright.service.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.LikeDao;
import com.greenright.dao.ProductDao;
import com.greenright.domain.Like;
import com.greenright.domain.Product;
import com.greenright.service.LikeService;
@Service
public class DefaultLikeService implements LikeService {

  @Resource private LikeDao likeDao;
  @Resource private ProductDao productDao;
  @Override
  public void add(Like like) throws Exception {
    likeDao.insertLike(like);
  }

  @Override
  public void delete(Like like) throws Exception {
    likeDao.deleteLike(like);
  }

  @Override
  public int check(Like like) throws Exception {
    return likeDao.CheckLike(like);
  }

  @Override
  public List<Product> findAll(int memberNo) throws Exception {
    //1. 회원이 누른 모든 좋아요 대하여 상품번호를 찾는다 
    //2. 1에서 받은 상품번호로 반복문을 돌면서 하나씩 하나씩 추가한다 . 
   List<Like>likeList =  likeDao.getByMember(memberNo);
   List<Product>productList = new ArrayList<>();
   for(Like a : likeList) {
     Product pr = productDao.findWithFilesBy(a.getProductNo());
     productList.add(pr);
   }
   
   return productList;
  }

  @Override
  public List<Like> findLikeProduct(int memberNo) throws Exception {
    return likeDao.findLikeProduct(memberNo);
  }

}
