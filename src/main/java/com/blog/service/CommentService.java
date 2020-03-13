package com.blog.service;


import com.blog.entity.Comment;

import java.util.List;

public interface CommentService {

    Comment save(Comment comment);

    List<Comment> getAll();


}
