package pl.danielzurek.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.danielzurek.entity.Customer;

import java.util.List;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
    @Query("SELECT displayName FROM Customer where displayName like %:keyword%")
    List<String> search(@Param("keyword") String keyword);

}

