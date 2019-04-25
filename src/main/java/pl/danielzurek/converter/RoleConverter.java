package pl.danielzurek.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.danielzurek.entity.Role;
import pl.danielzurek.repository.RoleRepository;

public class RoleConverter implements Converter<String, Role> {

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public Role convert(String id) {
        return this.roleRepository.findOne(Long.parseLong(id));
    }
}
