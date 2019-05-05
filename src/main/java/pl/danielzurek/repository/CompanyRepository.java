package pl.danielzurek.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.danielzurek.entity.Company;

public interface CompanyRepository extends JpaRepository<Company, Long> {
}
