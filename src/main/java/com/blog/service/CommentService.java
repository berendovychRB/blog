package com.blog.service;


import com.blog.entity.Comment;
import com.blog.entity.Post;
import org.springframework.stereotype.Service;

import java.util.List;


public interface CommentService {

    Comment save(Comment comment);

    Comment getOne(Long id);

    List<Comment> getAll();

    List<Comment> getAllByUserId(Long id);

    List<Comment> getAllByPostId(Long id);

    void delete(Long id);
}
