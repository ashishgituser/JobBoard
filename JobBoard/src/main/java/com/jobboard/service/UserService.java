package com.jobboard.service;

import com.jobboard.entity.User;
 
public interface UserService {
 
    User findById(int id);
     
    User findBySso(String sso);
     
}