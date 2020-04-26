package com.blog.repository;

import com.blog.entity.Post;
import com.blog.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    User findByNickName(String nickName);

    Integer countByNickName(String nickName);

    Integer countByEmail(String email);

    Integer countByPhone(String phone);

    List<User> getAllByFriended(User user);

    Integer countUsersByPosts(Post post);

    Integer countUsersByLikedPosts(Post post);
}
