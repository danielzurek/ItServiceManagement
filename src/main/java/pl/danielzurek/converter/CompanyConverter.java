package pl.danielzurek.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.danielzurek.entity.Company;
import pl.danielzurek.entity.Role;
import pl.danielzurek.repository.CompanyRepository;

public class CompanyConverter implements Converter<String, Company> {

    @Autowired
   private CompanyRepository companyRepository;

    @Override
    public Company convert(String id) {
        return this.companyRepository.findOne(Long.parseLong(id));
    }
}
