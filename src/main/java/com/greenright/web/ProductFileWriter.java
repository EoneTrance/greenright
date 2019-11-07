package com.greenright.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import com.greenright.domain.ProductFile;

@Component
public class ProductFileWriter {
  
  String uploadDir;
  
  public ProductFileWriter(ServletContext sc) {
    uploadDir = sc.getRealPath("/upload/product");
  }
  
  public List<ProductFile> getProductFiles(MultipartFile[] filePath) throws Exception {
    List<ProductFile> productFiles = new ArrayList<>();
    for (MultipartFile file : filePath) {
      if (file.isEmpty())
        continue;
      // 클라이언트가 보낸 파일을 디스크에 저장한다.
      String filename = UUID.randomUUID().toString();
      file.transferTo(new File(uploadDir + "/" + filename));
      // 저장한 파일명을 PhotoFile에 보관한다.
      ProductFile productFile = new ProductFile();
      productFile.setFilePath(filename);
      productFiles.add(productFile);
    }
    return productFiles;
  }
}
