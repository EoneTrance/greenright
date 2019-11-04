package com.greenright.service;

import com.greenright.domain.Product;

public interface ProductService {
void insert(Product product) throws Exception;
Product get(int no) throws Exception;
List<Product> list() throws Exception;
List<Product> listBySeller(int no) throws Exception;
List<Product> searchbyGroup(int no) throws Exception;
List<Product> searchbyCategory(int no) throws Exception;
void delete (int no)throws Exception;
}
