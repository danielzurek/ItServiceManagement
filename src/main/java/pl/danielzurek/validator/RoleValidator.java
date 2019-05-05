package pl.danielzurek.validator;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import pl.danielzurek.entity.Role;
import pl.danielzurek.entity.User;
import pl.danielzurek.repository.RoleRepository;


@Component
public class RoleValidator implements Validator {
    @Autowired
   private RoleRepository roleRepository;

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Role role = (Role) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");
        if (roleRepository.findByName(role.getName()) != null) {
            errors.rejectValue("name", "Duplicate.roleForm.name");
        }

    }

}
