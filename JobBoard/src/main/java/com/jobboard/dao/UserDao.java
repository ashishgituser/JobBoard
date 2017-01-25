package com.jobboard.dao;

import com.jobboard.entity.User;
 
public interface UserDao {
 
    User findById(int id);
     
    User findBySSO(String sso);
     
}