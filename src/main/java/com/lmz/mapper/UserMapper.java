package com.lmz.mapper;

import com.lmz.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    List<User> search();

    User login(User user);

    int register(User user);
}
