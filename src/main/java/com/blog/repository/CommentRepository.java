package com.blog.repository;

import com.blog.entity.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;

@Repository
public interface CommentRepository extends JpaRepository<Comment, Long> {

    Comment findByDateTime(Date dateTime);

}
