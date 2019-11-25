package com.greenright.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import com.greenright.domain.ProductDetailPhoto;

@Component
public class ProductDetailPhotoWriter {
  
  String uploadDir;
  
  public ProductDetailPhotoWriter(ServletContext sc) {
    uploadDir = sc.getRealPath("/upload/productDetail");
  }
  
  public List<ProductDetailPhoto> getPhotoFiles(MultipartFile[] filePath) throws Exception {
    List<ProductDetailPhoto> DetailphotoFiles = new ArrayList<>();
    for (MultipartFile file : filePath) {
      if (file.isEmpty())
        continue;
      // 클라이언트가 보낸 파일을 디스크에 저장한다.
      String filename = UUID.randomUUID().toString();
      file.transferTo(new File(uploadDir + "/" + filename));
      // 저장한 파일명을 PhotoFile에 보관한다.
      ProductDetailPhoto productDetailPhoto = new ProductDetailPhoto();
      productDetailPhoto.setPhotoPath(filename);
      DetailphotoFiles.add(productDetailPhoto);
    }
    return DetailphotoFiles;
  }
}
