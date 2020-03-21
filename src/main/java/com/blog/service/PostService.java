package com.blog.service;

import com.blog.dto.PostDto;
import com.blog.entity.Post;
import com.blog.entity.User;

import java.util.List;

public interface PostService {

    Post save(Post post);

    Post getOne(Long id);

    List<Post> getAll();

    List<Post> getAllByUserId(Long id);

    List<PostDto> postToDto(List<Post> posts);

    void addPost(String text, User user);

}
