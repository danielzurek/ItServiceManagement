package pl.danielzurek.controller.admin.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.danielzurek.entity.Company;
import pl.danielzurek.entity.Customer;
import pl.danielzurek.repository.CompanyRepository;
import pl.danielzurek.repository.CustomerRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin/customer")
public class AdminCustomerController {

    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private CompanyRepository companyRepository;

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String create(Model model) {
        model.addAttribute("customerForm", new Customer());
        return "/admin/customer/create";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String save(@ModelAttribute(name = "customerForm") @Valid Customer customerForm, BindingResult bindingResult, Model model) {

        if (bindingResult.hasErrors()) {
            return "admin/customer/create";
        }

        customerRepository.save(customerForm);


        return "redirect:/admin/homepage";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("customerFormEdit", this.customerRepository.findOne(id));
        return "/admin/customer/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String saveEdited(@ModelAttribute("customerFormEdit") @Valid Customer customerFormEdit, BindingResult bindingResult, Model model) {

        if (bindingResult.hasErrors()) {
            return "/admin/customer/edit";
        }
        customerRepository.save(customerFormEdit);


        return "redirect:/admin/homepage";
    }

    @RequestMapping(value = "/all")
    public String all(Model model) {
        final List<Customer> customers = this.customerRepository.findAll();
        model.addAttribute("customers", customers);
        return "/admin/customer/manage";
    }

    @RequestMapping(value = "details")
    public String details(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("customer", this.customerRepository.findOne(id));
        return "/admin/customer/details";
    }

    @ModelAttribute("company")
    public List<Company> findCompanies(Model model) {
        return this.companyRepository.findAll();
    }
}
