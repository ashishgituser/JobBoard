package com.jobboard.dao;

import com.jobboard.model.User;
 
public interface UserDao {
 
    User findById(int id);
     
    User findBySSO(String sso);
     
}