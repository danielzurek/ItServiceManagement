package pl.danielzurek.controller.admin.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.danielzurek.entity.Group;
import pl.danielzurek.entity.Role;
import pl.danielzurek.entity.User;
import pl.danielzurek.repository.GroupRepository;
import pl.danielzurek.repository.RoleRepository;
import pl.danielzurek.repository.UserRepository;
import pl.danielzurek.service.UserService;
import pl.danielzurek.validator.UserValidator;

import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping("/admin/user")
public class AdminUserController {

    @Autowired
    private UserService userService;
    @Autowired
    private UserValidator userValidator;

    @Autowired
    private GroupRepository groupRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        model.addAttribute("groups", groupRepository.findAll());
        return "admin/user/create";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "admin/user/create";
        }

        userService.save(userForm);


        return "redirect:/admin/homepage";
    }

    @RequestMapping(value = "/all")
    public String allUsers(Model model) {
        final List<User> users = this.userRepository.findAll();
        model.addAttribute("users", users);
        return "admin/user/manage";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String editUser(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("userFormEdit", this.userRepository.findOne(id));
        return "admin/user/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String saveEditedUser(@ModelAttribute("userFormEdit") User userFormEdit, BindingResult bindingResult, Model model) {
        userValidator.validateEdited(userFormEdit, bindingResult);

        if (bindingResult.hasErrors()) {
            return "admin/user/edit";
        }
        userService.edit(userFormEdit);


        return "redirect:/admin/homepage";
    }

    @RequestMapping(value = "/details", method = RequestMethod.GET)
    public String Details(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("user", this.userRepository.findOne(id));
        return "admin/user/details";
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String Details(Principal principal, Model model) {
        String username = principal.getName();
        model.addAttribute("username", username);
        model.addAttribute("userDetails", this.userRepository.findByUsername(username));
        return "/admin/user/profile";
    }

    @RequestMapping(value = "/password/change", method = RequestMethod.GET)
    public String passwordChange(Principal principal, Model model) {
        String username = principal.getName();
        model.addAttribute("passwordForm", this.userRepository.findByUsername(username));
        return "/admin/user/passwordChange";
    }


    @RequestMapping(value = "/password/change", method = RequestMethod.POST)
    public String saveNewPassword(@ModelAttribute("userFormEdit") User passwordForm, BindingResult bindingResult, Model model) {
        userValidator.validateEdited(passwordForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "admin/user/passwordChange";
        }
        userService.passwordChange(passwordForm);


        return "redirect:/admin/homepage";
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
