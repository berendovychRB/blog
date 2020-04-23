package com.blog.service.impl;

import com.blog.entity.Comment;
import com.blog.repository.CommentRepository;
import com.blog.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentRepository repository;

    @Override
    public Comment save(Comment comment) {
        return repository.save(comment);
    }

    @Override
    public List<Comment> getAll() {
        return repository.findAll();
    }

    @Override
    public List<Comment> getAllByUserId(Long id) {
        return repository.getAllByUserId(id);
    }

    @Override
    public List<Comment> getAllByPostId(Long id) {
        return repository.getAllByPostId(id);
    }

    @Override
    public void delete(Long id) {
        repository.deleteById(id);
    }

}
