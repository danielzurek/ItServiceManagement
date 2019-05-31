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

    @GetMapping(value = "/homepage")
    public String adminHomepage() {
        return "/admin/homepage";
    }


}
