package com.jobboard.service;

import com.jobboard.model.User;
 
public interface UserService {
 
    User findById(int id);
     
    User findBySso(String sso);
     
}