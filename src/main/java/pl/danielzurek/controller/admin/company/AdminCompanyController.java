package pl.danielzurek.controller.admin.company;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.danielzurek.entity.Company;
import pl.danielzurek.entity.User;
import pl.danielzurek.repository.CompanyRepository;

import javax.validation.Valid;
import java.util.List;


@Controller
@RequestMapping("/admin/company")
public class AdminCompanyController {

    @Autowired
   private CompanyRepository companyRepository;

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String createCompany(Model model){
        model.addAttribute("companyForm", new Company());
        return "/admin/company/create";
    }
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String saveCreatedCompany(@ModelAttribute(name = "companyForm")@Valid Company companyForm, BindingResult bindingResult, Model model) {

        if (bindingResult.hasErrors()) {
            return "admin/company/create";
        }

       companyRepository.save(companyForm);


        return "redirect:/admin/homepage";
    }

    @RequestMapping(value = "/all")
    public String allCompanies(Model model) {
        final List<Company> companies = this.companyRepository.findAll();
        model.addAttribute("companies", companies);
        return "/admin/company/manage";
    }
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String editCompany(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("companyFormEdit", this.companyRepository.findOne(id));
        return "/admin/company/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String saveEditedCompany(@ModelAttribute("companyFormEdit") @Valid Company companyFormEdit, BindingResult bindingResult, Model model) {

        if (bindingResult.hasErrors()) {
            return "/admin/company/edit";
        }
       companyRepository.save(companyFormEdit);


        return "redirect:/admin/homepage";
    }

    @RequestMapping(value = "/details", method = RequestMethod.GET)
    public String Details(@RequestParam(name = "id") Long id, Model model) {
        model.addAttribute("company", this.companyRepository.findOne(id));
        return "admin/company/details";
    }
}
