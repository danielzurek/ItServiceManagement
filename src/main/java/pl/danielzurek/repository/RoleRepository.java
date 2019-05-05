package pl.danielzurek.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import pl.danielzurek.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

    Role findByName(String name);
}