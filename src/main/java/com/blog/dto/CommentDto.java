package com.blog.dto;

import lombok.Data;

import java.util.Date;

@Data
public class CommentDto {

    private Long id;

    private String text;

    private Date dateTime;

    public CommentDto() {
    }

    public CommentDto(String text, Date dateTime) {
        this.text = text;
        this.dateTime = dateTime;
    }

}
