package com.blog.service;


import com.blog.entity.Comment;
import org.springframework.stereotype.Service;

import java.util.List;


public interface CommentService {

    Comment save(Comment comment);

    List<Comment> getAll();

    List<Comment> getAllByUserId(Long id);

    List<Comment> getAllByPostId(Long id);

}
