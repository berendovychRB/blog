package com.blog.service;

import com.blog.dto.UserDto;
import com.blog.entity.User;


public interface UserService {

    User save(User user);

    User registrarion(UserDto userDto);

    User getOne(Long id);


}
