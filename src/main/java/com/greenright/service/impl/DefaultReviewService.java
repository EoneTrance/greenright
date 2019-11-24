package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.greenright.dao.ReviewDao;
import com.greenright.dao.ReviewPhotoDao;
import com.greenright.domain.Review;
import com.greenright.domain.ReviewPhoto;
import com.greenright.service.ReviewService;

@Service
public class DefaultReviewService implements ReviewService {

  @Resource
  private ReviewDao reviewDao;
  @Resource
  private ReviewPhotoDao reviewPhotoDao;


  @Transactional
  @Override
  public void insert(Review review) throws Exception {
    reviewDao.insertReview(review);
    ReviewPhoto reviewphoto = review.getPhotos();
    if (reviewphoto != null) {
      reviewphoto.setReviewNo(review.getNo());
      reviewPhotoDao.insertReviewPhoto(reviewphoto);
    } else {

    }
  }


  @Override
  public int checkReview(Review review) throws Exception {
    return reviewDao.checkReview(review);
  }


  @Override
  public List<Review> list(int no) throws Exception {
    return reviewDao.findAll(no);
  }


  @Override
  public Review findByReviewNo(int no) throws Exception {
    return reviewDao.findBy(no);
  }


  @Override
  public double getRatingAver(int no) throws Exception {
    return reviewDao.getRatingAver(no);
  }



}
