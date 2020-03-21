package com.blog.service.impl;

import com.blog.dto.UserDto;
import com.blog.entity.Role;
import com.blog.entity.User;
import com.blog.repository.UserRepository;
import com.blog.service.PostService;
import com.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service("userDetailsService")
public class UserServiceImpl implements UserService, UserDetailsService {

    @Autowired
    private UserRepository repository;

    @Autowired
    private PostService postService;

    @Autowired
    private PasswordEncoder encoder;

    @Override
    public User save(User user) {
        return repository.save(user);
    }

    @Override
    public User registration(UserDto userDto) {
        if (!registrationValidation(userDto)) throw new AccessDeniedException("Bad Data");
        User user = new User();
        user.setNickName(userDto.getLogin());
        user.setPassword(encoder.encode(userDto.getPassword()));
        if (userDto.getLogin().equals("admin")) user.setRole(Role.ADMIN);
        else user.setRole(Role.USER);
        user.setFirstName(userDto.getFirstName());
        user.setSecondName(userDto.getSecondName());
        user.setEmail(userDto.getEmail());
        user.setPhone(userDto.getPhone());
        return save(user);
    }




    public Boolean registrationValidation(UserDto userDto) {
        if (!userDto.getEmail().contains("@")) return false;
        if (!userDto.getPassword().equals(userDto.getPasswordRepeat())) return false;
        // if (userDto.getPhone().length() != 10) return false;
        if (repository.countByEmail(userDto.getEmail()) > 0) return false;
        if (repository.countByNickName(userDto.getLogin()) > 0) return false;
        if (repository.countByPhone(userDto.getPhone()) > 0) return false;
        return true;
    }


    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User byUserName = repository.findByNickName(s);
        ArrayList<SimpleGrantedAuthority> simpleGrantedAuthorities = new ArrayList<>();
        simpleGrantedAuthorities.add(new SimpleGrantedAuthority("ROLE_" + byUserName.getRole().toString()));
        return new org.springframework.security.core.userdetails.User(
                byUserName.getNickName(),
                byUserName.getPassword(),
                simpleGrantedAuthorities
        );
    }

    public String getUserName() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = ((UserDetails) principal).getUsername();
        return username;
    }

    @Override
    public User getOne() {
        return repository.findByNickName(getUserName());
    }

}
