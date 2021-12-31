package com.lmz.service;

import com.lmz.domain.User;
import com.lmz.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    UserMapper userMapper;
    public List<User> search() {
        return userMapper.search();
    }

    public User login(User user) {
        return userMapper.login(user);
    }

    public int register(User user) {
        return userMapper.register(user);
    }
}
