package com.greenright.service;


public interface RecommendService {
  void insert(int boardNo,int memberNo) throws Exception;
  void delete(int boardNo,int memberNo) throws Exception;
}
