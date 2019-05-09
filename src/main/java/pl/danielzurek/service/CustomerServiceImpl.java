package pl.danielzurek.service;

import org.springframework.beans.factory.annotation.Autowired;
import pl.danielzurek.repository.CustomerRepository;

import java.util.List;

public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    public List<String> search(String keyword) {
        return customerRepository.search(keyword);
    }
}
