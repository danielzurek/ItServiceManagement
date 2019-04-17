package pl.danielzurek.service;


import pl.danielzurek.entity.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
