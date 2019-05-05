package pl.danielzurek.controller.admin.group;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.danielzurek.entity.Group;
import pl.danielzurek.repository.GroupRepository;
import pl.danielzurek.validator.GroupValidator;

import java.util.List;

@Controller
@RequestMapping("/admin/group")
public class AdminGroupController {

    @Autowired
    private GroupRepository groupRepository;
    @Autowired
    private GroupValidator groupValidator;

    @RequestMapping(value = "/all")
    public String allGroups(Model model) {
        final List<Group> groups = this.groupRepository.findAll();
        model.addAttribute("groups", groups);
        return "admin/group/manage";
    }


    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String createGroup(Model model) {
        model.addAttribute("groupForm", new Group());
        return "/admin/group/create";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String saveCreatedGroup(@ModelAttribute("groupForm") Group groupForm, BindingResult bindingResult, Model model) {
        groupValidator.validate(groupForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "admin/group/create";
        }

        groupRepository.save(groupForm);


        return "redirect:/admin/homepage";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String saveEditedGroup(@ModelAttribute("groupEditForm") Group groupEditForm, BindingResult bindingResult, Model model) {
        groupValidator.validate(groupEditForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "admin/group/edit";
        }

        groupRepository.save(groupEditForm);


        return "redirect:/admin/homepage";
    }


    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String editGroup(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("groupEditForm", this.groupRepository.findOne(id));
        return "/admin/group/edit";
    }
    @RequestMapping(value = "/details", method = RequestMethod.GET)
    public String Details(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("group", this.groupRepository.findOne(id));
        return "admin/group/details";
    }
}
