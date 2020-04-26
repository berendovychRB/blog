package com.blog.service;

import com.blog.dto.UserDto;
import com.blog.entity.Post;
import com.blog.entity.User;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;


public interface UserService {

    User save(User user);

    User registration(UserDto userDto);

    Boolean registrationValidation(UserDto userDto);

    List<User> getAll();

    User getCurrentUser();

    User getOne(Long id);

    User getByNickName(String nickName);

    void editUser(User user,MultipartFile file);

    void delete(Long id);

    User giveAdmin(Long id);

    User giveUser(Long id);

    List<User> addToFriends(User user);

    List<User> getAllFriendsByUserId(User user);

    List<User> deleteFromFriends(User user);

    Integer countLikes(Post post);

}
