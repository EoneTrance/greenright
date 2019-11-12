package com.greenright.web.json;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import com.greenright.domain.Review;
import com.greenright.service.ReviewService;
import com.greenright.web.ReviewPhotoWriter;

@RestController("json.ReviewController")
@RequestMapping("/json/Review")
public class ReviewController {
  @Resource private ReviewService reviewService;
  @Resource private ReviewPhotoWriter reviewPhotoWriter;

  @Transactional
  @PostMapping("add")
  public JsonResult add(Review review,MultipartFile reviewPhoto)throws Exception{
    try {
      System.out.println(review.toString());
      System.out.println(reviewPhoto);
      if(reviewPhoto != null) {
        review.setPhotos(reviewPhotoWriter.getPhotoFile(reviewPhoto));
        System.out.println(review.getPhotos());
      }else {

      }
      reviewService.insert(review);
      return new JsonResult().setResult(JsonResult.SUCCESS);
    }catch(Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE);
    }
  }
  @GetMapping("get")
  public JsonResult get(int no) throws Exception{
    try {
      Review review = reviewService.findByReviewNo(no);
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(review);
    }catch(Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  @GetMapping("list")
  public JsonResult list(int no) throws Exception{
    try {
    List<Review> reviews = reviewService.list(no);
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(reviews);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  @GetMapping("getRatingAVer")
  public JsonResult getRatingAver(int no) throws Exception{
    try {
      int RatingAver = reviewService.getRatingAver(no);
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(RatingAver);
    }catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
}
