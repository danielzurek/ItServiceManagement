package pl.danielzurek.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.danielzurek.entity.Group;
import pl.danielzurek.entity.Role;
import pl.danielzurek.entity.User;
import pl.danielzurek.repository.GroupRepository;
import pl.danielzurek.repository.RoleRepository;
import pl.danielzurek.repository.UserRepository;
import pl.danielzurek.service.UserService;
import pl.danielzurek.validator.GroupValidator;
import pl.danielzurek.validator.RoleValidator;
import pl.danielzurek.validator.UserValidator;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserService userService;


    @Autowired
    private UserValidator userValidator;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private GroupRepository groupRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleValidator roleValidator;
    @Autowired
    private GroupValidator groupValidator;


    @GetMapping(value = "/homepage")
    public String adminHomepage() {
        return "/admin/homepage";
    }

//    @RequestMapping(value = "/createUser", method = RequestMethod.GET)
//    public String registration(Model model) {
//        model.addAttribute("userForm", new User());
//        model.addAttribute("groups", groupRepository.findAll());
//        return "admin/user/create";
//    }
//
//    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
//    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
//        userValidator.validate(userForm, bindingResult);
//
//        if (bindingResult.hasErrors()) {
//            return "admin/user/create";
//        }
//
//        userService.save(userForm);
//
//
//        return "redirect:/admin/homepage";
//    }
//
//    @RequestMapping(value = "/users")
//    public String allUsers(Model model) {
//        final List<User> users = this.userRepository.findAll();
//        model.addAttribute("users", users);
//        return "admin/user/manage";
//    }
//
//    @RequestMapping(value = "user/edit", method = RequestMethod.GET)
//    public String editUser(@RequestParam(name = "id") Long id, Model model) {
//        model.addAttribute("userFormEdit", this.userRepository.findOne(id));
//        return "admin/user/edit";
//    }
//
//    @RequestMapping(value = "/user/edit", method = RequestMethod.POST)
//    public String saveEditedUser(@ModelAttribute("userFormEdit") User userFormEdit, BindingResult bindingResult, Model model) {
//        userValidator.validateEdited(userFormEdit, bindingResult);
//
//        if (bindingResult.hasErrors()) {
//            return "admin/user/edit";
//        }
//        userService.edit(userFormEdit);
//
//
//        return "redirect:/admin/homepage";
//    }
//
//    @RequestMapping(value = "/createRole", method = RequestMethod.GET)
//    public String createRole(Model model) {
//        model.addAttribute("roleForm", new Role());
//        return "admin/role/create";
//    }
//
//    @RequestMapping(value = "/createRole", method = RequestMethod.POST)
//    public String saveCreatedRole(@ModelAttribute("roleForm") Role roleForm, BindingResult bindingResult, Model model) {
//        roleValidator.validate(roleForm, bindingResult);
//
//        if (bindingResult.hasErrors()) {
//            return "admin/role/create";
//        }
//
//        roleRepository.save(roleForm);
//
//
//        return "redirect:/admin/homepage";
//    }
//
//
//    @RequestMapping(value = "/roles")
//    public String roles(Model model) {
//        List<Role> roles = this.roleRepository.findAll();
//        model.addAttribute("roles", roles);
//        return "admin/role/manage";
//    }
//
//    @RequestMapping(value = "/role/edit", method = RequestMethod.GET)
//    public String editRole(@RequestParam(name = "id") Long id, Model model) {
//        model.addAttribute("roleEditForm", this.roleRepository.findOne(id));
//        return "admin/role/edit";
//    }
//
//    @RequestMapping(value = "/role/edit", method = RequestMethod.POST)
//    public String saveEditedRole(@ModelAttribute("roleEditForm") Role roleEditForm, BindingResult bindingResult, Model model) {
//        roleValidator.validate(roleEditForm, bindingResult);
//
//        if (bindingResult.hasErrors()) {
//            return "admin/role/edit";
//        }
//
//        roleRepository.save(roleEditForm);
//
//
//        return "redirect:/admin/homepage";
//    }
//
//    @RequestMapping(value = "/groups")
//    public String allGroups(Model model) {
//        final List<Group> groups = this.groupRepository.findAll();
//        model.addAttribute("groups", groups);
//        return "admin/group/manage";
//    }
//
//
//    @RequestMapping(value = "/createGroup", method = RequestMethod.GET)
//    public String createGroup(Model model) {
//        model.addAttribute("groupForm", new Group());
//        return "admin/group/create";
//    }
//
//    @RequestMapping(value = "/createGroup", method = RequestMethod.POST)
//    public String saveCreatedGroup(@ModelAttribute("groupForm") Group groupForm, BindingResult bindingResult, Model model) {
//        groupValidator.validate(groupForm, bindingResult);
//
//        if (bindingResult.hasErrors()) {
//            return "admin/group/create";
//        }
//
//        groupRepository.save(groupForm);
//
//
//        return "redirect:/admin/homepage";
//    }
//
//    @RequestMapping(value = "/group/edit", method = RequestMethod.POST)
//    public String saveEditedGroup(@ModelAttribute("groupEditForm") Group groupEditForm, BindingResult bindingResult, Model model) {
//        groupValidator.validate(groupEditForm, bindingResult);
//
//        if (bindingResult.hasErrors()) {
//            return "admin/group/edit";
//        }
//
//        groupRepository.save(groupEditForm);
//
//
//        return "redirect:/admin/homepage";
//    }
//
//
//    @RequestMapping(value = "/group/edit", method = RequestMethod.GET)
//    public String editGroup(@RequestParam(name = "id") Long id, Model model) {
//        model.addAttribute("groupEditForm", this.groupRepository.findOne(id));
//        return "admin/group/edit";
//    }
//
//    @ModelAttribute("roles")
//    public List<Role> findRoles(Model model) {
//        return this.roleRepository.findAll();
//    }
//
//    @ModelAttribute("groups")
//    public List<Group> findGroups(Model model) {
//        return this.groupRepository.findAll();
//    }


}
