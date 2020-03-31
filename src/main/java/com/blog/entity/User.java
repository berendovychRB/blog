package com.blog.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Table(name = "users")
@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nickName;

    private String firstName;

    private String secondName;

    private String phone;

    private String email;

    private String password;

    @JoinColumn
    private String photoUrl;

    @Enumerated(EnumType.STRING)
    private Role role;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Post> posts;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Comment> comments;

    @ManyToMany(mappedBy = "liked", cascade = CascadeType.ALL)
    private List<Post> likedPosts;

    public User() {
    }

    public User(String nickName) {
        this.nickName = nickName;
    }

    @Override
    public String toString() {
        return "" + firstName + " " + secondName + "";
    }


}
