package pl.danielzurek.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.danielzurek.entity.Role;
import pl.danielzurek.entity.User;
import pl.danielzurek.repository.IncidentRepository;
import pl.danielzurek.repository.RoleRepository;
import pl.danielzurek.repository.UserRepository;
import pl.danielzurek.service.SecurityService;
import pl.danielzurek.service.UserService;
import pl.danielzurek.validator.UserValidator;

import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private IncidentRepository incidentRepository;
    @Autowired
    private UserRepository userRepository;

//    @RequestMapping(value = "/registration", method = RequestMethod.GET)
//    public String registration(Model model) {
//        model.addAttribute("userForm", new User());
//
//        return "user/registration";
//    }
//
//    @RequestMapping(value = "/registration", method = RequestMethod.POST)
//    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
//        userValidator.validate(userForm, bindingResult);
//
//        if (bindingResult.hasErrors()) {
//            return "user/registration";
//        }
//
//        userService.save(userForm);
//
//        securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());
//
//        return "redirect:/welcome";
//    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username or password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "/user/login";
    }

    @RequestMapping(value = {"/home"}, method = RequestMethod.GET)
    public String home(Principal principal, Model model) {
        String username = principal.getName();
        String priority = "Priority 1";
        Long id = this.userRepository.findByUsername(username).getId();
        model.addAttribute("incidents", this.incidentRepository.allUnresolved(id));
        model.addAttribute("criticals", this.incidentRepository.criticals(priority));


        return "/user/home";
    }

    @RequestMapping(value = {"/myWork"}, method = RequestMethod.GET)
    public String myWork(Principal principal, Model model) {
        String username = principal.getName();
        Long id = this.userRepository.findByUsername(username).getId();
        model.addAttribute("incidents", this.incidentRepository.allUnresolved(id));


        return "/user/myWork";
    }


    @ModelAttribute("roles")
    public List<Role> findRoles(Model model) {
        return this.roleRepository.findAll();
    }
}
