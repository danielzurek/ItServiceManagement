package pl.danielzurek.controller.incident;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.danielzurek.entity.Incident;
import pl.danielzurek.entity.User;
import pl.danielzurek.repository.CustomerRepository;
import pl.danielzurek.repository.GroupRepository;
import pl.danielzurek.repository.IncidentRepository;
import pl.danielzurek.repository.UserRepository;
import pl.danielzurek.service.CustomerService;

import javax.validation.Valid;
import java.security.Principal;
import java.time.LocalDateTime;

@Controller
@RequestMapping("/incident")
public class IncidentController {
    @Autowired
    private IncidentRepository incidentRepository;
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private GroupRepository groupRepository;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private UserRepository userRepository;

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create(Model model) {
        model.addAttribute("incidentForm", new Incident());
        model.addAttribute("customers", this.customerRepository.findAll());
        model.addAttribute("groups", this.groupRepository.findAll());
        model.addAttribute("users", this.userRepository.findAll());

        return "/incident/create";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String save(@ModelAttribute(name = "incidentForm") @Valid Incident incidentForm, BindingResult bindingResult, Model model, Principal principal) {

        if (bindingResult.hasErrors()) {
            return "incident/create";
        }
        LocalDateTime now = LocalDateTime.now();
        incidentForm.setCreatedAt(now);
        String username = principal.getName();
        Long userId = this.userRepository.findByUsername(username).getId();
        User user = new User();
        user.setId(userId);
        incidentForm.setResolver(user);
        incidentRepository.save(incidentForm);
        Long id = incidentForm.getId();


        return "redirect:/incident/edit?id=" + id;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("incidentFormEdit", this.incidentRepository.findOne(id));
        model.addAttribute("customers", this.customerRepository.findAll());
        model.addAttribute("groups", this.groupRepository.findAll());
        model.addAttribute("users", this.userRepository.findAll());
        return "/incident/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String saveEdited(@ModelAttribute("incidentFormEdit") @Valid Incident incidentFormEdit, BindingResult bindingResult, Model model) {
//
        if (bindingResult.hasErrors()) {
            return "/incident/edit";
        }
        Long id = incidentFormEdit.getId();
        incidentRepository.save(incidentFormEdit);


        return "redirect:/incident/edit?id=" + id;
    }

    @RequestMapping(value = {"/criticalsHistory"}, method = RequestMethod.GET)
    public String criticals(Model model) {
        String priority = "Priority 1";
        model.addAttribute("criticals", this.incidentRepository.criticalsHistory(priority));


        return "/incident/criticalsHistory";
    }

    @RequestMapping(value = {"/open"}, method = RequestMethod.GET)
    public String open(Model model) {
        model.addAttribute("incidents", this.incidentRepository.openIncidents());


        return "/incident/open";
    }

    @RequestMapping(value = {"/solved"}, method = RequestMethod.GET)
    public String solved(Model model) {
        model.addAttribute("incidents", this.incidentRepository.SolvedIncidents());


        return "/incident/solved";
    }

}