package com.blog.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Data
@Entity
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String text;

    @JoinColumn(name = "title")
    private String title;

    private Date dateTime;

    @ManyToOne(fetch = FetchType.EAGER)
    private User user;

    @OneToMany(mappedBy = "post",cascade = CascadeType.ALL)
    private List<Comment> comments;

    public Post() {
    }

    public Post(String title, String text) {
        this.text = text;
        this.title = title;
    }

    public Post(String text, User user){
        this.user = user;
        this.text = text;
    }
}
