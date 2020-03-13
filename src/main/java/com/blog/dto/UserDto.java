package com.blog.dto;

import lombok.Data;

@Data
public class UserDto {

    private Long id;
    private String login;
    private String firstName;
    private String secondName;
    private String password;
    private String passwordRepeat;
    private String phone;
    private String email;

    public UserDto() {
    }

    public UserDto(String login, String password) {
        this.login = login;
        this.password = password;
    }

    public UserDto(Long id, String login, String firstName, String secondName, String password, String passwordRepeat, String phone, String email) {
        this.id = id;
        this.login = login;
        this.firstName = firstName;
        this.secondName = secondName;
        this.password = password;
        this.passwordRepeat = passwordRepeat;
        this.phone = phone;
        this.email = email;
    }
}
