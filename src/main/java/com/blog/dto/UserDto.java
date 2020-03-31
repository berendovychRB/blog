package com.blog.dto;

import com.blog.entity.User;
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
    private String photoUrl;

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

    public UserDto(User user) {
        this.id = user.getId();
        this.login = user.getNickName();
        this.firstName = user.getFirstName();
        this.secondName = user.getSecondName();
        this.password = user.getPassword();
        this.phone = user.getPhone();
        this.email = user.getEmail();
        this.photoUrl = user.getPhotoUrl();
    }
}
