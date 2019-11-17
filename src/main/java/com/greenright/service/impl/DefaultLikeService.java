package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.LikeDao;
import com.greenright.domain.Like;
import com.greenright.service.LikeService;
@Service
public class DefaultLikeService implements LikeService {

  @Resource private LikeDao likeDao;

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

}
