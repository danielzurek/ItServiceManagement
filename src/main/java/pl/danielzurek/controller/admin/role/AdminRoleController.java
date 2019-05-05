package pl.danielzurek.controller.admin.role;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.danielzurek.entity.Role;
import pl.danielzurek.repository.RoleRepository;
import pl.danielzurek.validator.RoleValidator;

import java.util.List;

@Controller
@RequestMapping("/admin/role")
public class AdminRoleController {

    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private RoleValidator roleValidator;

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String createRole(Model model) {
        model.addAttribute("roleForm", new Role());
        return "admin/role/create";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String saveCreatedRole(@ModelAttribute("roleForm") Role roleForm, BindingResult bindingResult, Model model) {
        roleValidator.validate(roleForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "admin/role/create";
        }

        roleRepository.save(roleForm);


        return "redirect:/admin/homepage";
    }

    @RequestMapping(value = "/all")
    public String roles(Model model) {
        List<Role> roles = this.roleRepository.findAll();
        model.addAttribute("roles", roles);
        return "admin/role/manage";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String editRole(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("roleEditForm", this.roleRepository.findOne(id));
        return "admin/role/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String saveEditedRole(@ModelAttribute("roleEditForm") Role roleEditForm, BindingResult bindingResult, Model model) {
        roleValidator.validate(roleEditForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "admin/role/edit";
        }

        roleRepository.save(roleEditForm);


        return "redirect:/admin/homepage";
    }

    @RequestMapping(value = "/details", method = RequestMethod.GET)
    public String Details(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("role", this.roleRepository.findOne(id));
        return "admin/role/details";
    }

}
