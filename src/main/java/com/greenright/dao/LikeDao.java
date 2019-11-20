package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Like;

public interface LikeDao {
  int insertLike(Like like)throws Exception;
  int deleteLike(Like like)throws Exception;
  int CheckLike(Like like) throws Exception;
  int getCountByProduct (int productNo) throws Exception;
  int deleteAllLikes (int productNo) throws Exception;
  List<Like>getByMember(int memberNo) throws Exception;
}
