package pl.danielzurek.validator;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import pl.danielzurek.entity.Group;
import pl.danielzurek.entity.User;
import pl.danielzurek.repository.GroupRepository;


@Component
public class GroupValidator implements Validator {
    @Autowired
    private GroupRepository groupRepository;

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Group group = (Group) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");
        if (groupRepository.findByName(group.getName()) != null) {
            errors.rejectValue("name", "Duplicate.groupForm.name");
        }

    }

}
