package com.blog.dto;

import com.blog.entity.Post;
import lombok.Data;

import java.util.Date;

@Data
public class PostDto {

    private Long id;

    private String text;

    private Date dateTime;

    public PostDto() {
    }

    public PostDto(String text, Date dateTime) {
        this.text = text;
        this.dateTime = dateTime;
    }

    public PostDto(Post post) {
        this.id = post.getId();
        this.text = post.getText();
        this.dateTime = post.getDateTime();
    }
}
