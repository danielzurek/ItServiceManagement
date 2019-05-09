package pl.danielzurek.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.danielzurek.entity.Customer;
import pl.danielzurek.entity.User;
import pl.danielzurek.repository.CustomerRepository;

public class CustomerConverter implements Converter <String, Customer> {
    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public Customer convert(String id) {
        return this.customerRepository.findOne(Long.parseLong(id));
    }
}
