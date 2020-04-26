package com.blog.repository;

import com.blog.entity.Post;
import com.blog.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostRepository extends JpaRepository<Post, Long> {

    List<Post> getAllByUserId(Long id);

    List<Post> findPostsByLiked(Long id);

    Integer countPostsByUser(User user);

}
