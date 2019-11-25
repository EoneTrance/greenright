package com.greenright.service.impl;

import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.greenright.dao.ProductDao;
import com.greenright.dao.ProductDetailPhotoDao;
import com.greenright.dao.ProductOptionDao;
import com.greenright.dao.ProductOptionItemDao;
import com.greenright.dao.ProductPhotoDao;
import com.greenright.domain.Product;
import com.greenright.domain.ProductDetailPhoto;
import com.greenright.domain.ProductOption;
import com.greenright.domain.ProductOptionItem;
import com.greenright.domain.ProductPhoto;
import com.greenright.service.ProductService;
@Service
public class DefaultProductService implements ProductService{
  @Resource private ProductDao productDao;
  @Resource private ProductPhotoDao productPhotoDao;
  @Resource private ProductOptionDao optionDao;
  @Resource private ProductOptionItemDao optionItemDao;
  @Resource private ProductDetailPhotoDao productDeatilPhotoDao;

  @Transactional
  @Override
  public void insert(Product product) throws Exception {
    productDao.insert(product);
   if(product.getPhotos()!=null) {
    for(ProductPhoto photo: product.getPhotos()) {
      photo.setProductNo(product.getNo());
      productPhotoDao.insert(photo);
    }
   }
     if(product.getDetailPhotos()!=null) {
       for(ProductDetailPhoto photo :product.getDetailPhotos()) {
         photo.setProductNo(product.getNo());
         productDeatilPhotoDao.insert(photo);
       }
     }
   
    if(product.getOptions()!=null) {
      for(ProductOption option: product.getOptions()) {
        option.setProductNo(product.getNo());
        optionDao.insert(option);
        for(ProductOptionItem optionItem : option.getOptionItem()) {
          optionItem.setOptionsNo(option.getNo());
          optionItemDao.insert(optionItem);
        }
      }
    }else {
      ProductOption productOption = new ProductOption();
      productOption.setOptionName("기본옵션");
      productOption.setProductNo(product.getNo());
      optionDao.insert(productOption);
      
      ProductOptionItem productOptionItem = new ProductOptionItem();
      productOptionItem.setOptionsNo(productOption.getNo());
      productOptionItem.setOptionsQuantity(product.getQuantity());
      productOptionItem.setOptionsPrice(0);
      productOptionItem.setOptionItemMatter("기본옵션입니다");
      optionItemDao.insert(productOptionItem);
      
    }
  }

  @Override
  public Product get(int no) throws Exception {
    return productDao.findWithFilesBy(no);
  }
  @Override
  public Product getforPhoto(int no) throws Exception {
    return productDao.findForPhoto(no);
  }

  @Override
  public List<Product> list() throws Exception {
    return productDao.findAllWithFile();
  }

  @Override
  public List<Product> searchbyGroup(int no,int memberNo) throws Exception {
    HashMap<String,Object> param = new HashMap<>();
    param.put("groupNo", no);
    param.put("memberNo", memberNo);
    return productDao.findByGroupNo(param);
  }

  @Override
  public List<Product> searchbyCategory(int no,int memberNo) throws Exception{
    HashMap<String,Object> param = new HashMap<>();
    param.put("groupNo", no);
    param.put("memberNo", memberNo);
    return productDao.findByCategoryNo(param);
  }

  @Override
  public List<Product> listBySeller(int no) throws Exception {
    return productDao.findAllBySeller(no);
  }
  @Transactional
  @Override
  public void delete(int no) throws Exception {
    List<ProductOption> options = optionDao.getProductOptionItemNum(no);
    for(ProductOption a : options) {
      optionItemDao.deleteAll(a.getNo());
    }
    optionDao.deleteAll(no);
    productPhotoDao.deleteAll(no);
    productDao.delete(no);
  }
  @Transactional
  @Override
  public void update(Product product
      ,String ProductOptionNo[],String ProductOptionItemNo[]) throws Exception {
    ProductOption productOption = new ProductOption();
    if(ProductOptionNo!=null) {
      for(int i = 0 ; i<ProductOptionNo.length; i++) {
        if(i%2==0) {
          productOption.setOptionName(ProductOptionNo[i]);
        }else {
          productOption.setNo(Integer.parseInt(ProductOptionNo[i]));
          optionDao.update(productOption);
        }
      }
    }
    if(ProductOptionItemNo!=null) {
      ProductOptionItem productOptionItem = new ProductOptionItem();
      for(int i =0 ; i<ProductOptionItemNo.length; i++) {
        if(i%5==0) {
          productOptionItem.setOptionItemMatter(ProductOptionItemNo[i]);
        }else if(i%5==1) {
          productOptionItem.setOptionsPrice(Integer.parseInt(ProductOptionItemNo[i]));
        }else if(i%5==2) {
          productOptionItem.setOptionsQuantity(Integer.parseInt(ProductOptionItemNo[i]));
        }else if(i%5==3) {
          productOptionItem.setNo(Integer.parseInt(ProductOptionItemNo[i]));
        }else{
          productOptionItem.setOptionsNo(Integer.parseInt(ProductOptionItemNo[i]));
          optionItemDao.update(productOptionItem);
        }
      }
    }
    productDao.update(product);
    for (ProductPhoto photo : product.getPhotos()) {
      photo.setProductNo(product.getNo()); 
      productPhotoDao.insert(photo);
    }
  }

  @Override
  public List<Product> gettopbyCategoryNum(int no) throws Exception {
    int a =productDao.getgroupNo(no); 
    // 상품번호로 그룹 번호를 알아내는 메서드
    return productDao.getTopOnGroup(a);
    // 그룹번호로 최신순 4개의 상품을 추천하는 메서드 
  }

  @Override
  public List<Product> upcyclingList() throws Exception {
    return productDao.findAllUpcycling();
  }

  @Override
  public Product MostRecommend(int no) throws Exception {
    return productDao.MostRecommend(no);
  }

  @Override
  public List<Product> getByMemberNo(int memberNo) throws Exception {
    return productDao.findAllByMemberNo(memberNo);
  }

  @Override
  public List<Product> searchbyCategoryForMain(int no) throws Exception {
    return productDao.searchbyCategoryForMain(no);
  }

  @Override
  public List<Product> searchbyGroupForMain(int no) throws Exception {
    return productDao.searchbyGroupForMain(no);
  }

  @Override
  public List<Product> getUpcyclingByMemberNo(int no) throws Exception {
    return productDao.getUpcyclingByMemberNo(no);
  }
  public void addProductRecommend(int productNo) throws Exception {
    productDao.addProductRecommend(productNo);
  }
  
  @Override
  public void decreaseProductRecommend(int productNo) throws Exception {
    productDao.decreaseProductRecommend(productNo);
  }

  @Override
  public List<Product> bestProductList() throws Exception {
    return productDao.bestProductList();
  }
}

