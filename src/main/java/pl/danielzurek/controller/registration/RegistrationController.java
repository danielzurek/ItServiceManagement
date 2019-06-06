package pl.danielzurek.controller.registration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.danielzurek.entity.Group;
import pl.danielzurek.entity.Role;
import pl.danielzurek.entity.User;
import pl.danielzurek.repository.GroupRepository;
import pl.danielzurek.repository.RoleRepository;
import pl.danielzurek.repository.UserRepository;
import pl.danielzurek.service.UserService;
import pl.danielzurek.validator.UserValidator;

import java.util.List;

@Controller
@RequestMapping("/registration")
public class RegistrationController {

    @Autowired
    private GroupRepository groupRepository;
    @Autowired
    private UserValidator userValidator;
    @Autowired
    private UserService userService;
    @Autowired
    private RoleRepository roleRepository;

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        return "registration/create";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration/create";
        }

        userService.save(userForm);


        return "redirect:/user/login";
    }

    @ModelAttribute("roles")
    public List<Role> findRoles(Model model) {
        return this.roleRepository.findAll();
    }


    @ModelAttribute("groups")
    public List<Group> findGroups(Model model) {
        return this.groupRepository.findAll();
    }
}
