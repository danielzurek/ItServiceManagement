package pl.danielzurek.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.danielzurek.entity.User;
import pl.danielzurek.repository.UserRepository;

public class UserConverter implements Converter<String, User> {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User convert(String id) {
        return this.userRepository.findOne(Long.parseLong(id));
    }

}
