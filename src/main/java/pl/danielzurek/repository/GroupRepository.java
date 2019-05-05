package pl.danielzurek.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.danielzurek.entity.Group;
import pl.danielzurek.entity.Role;

public interface GroupRepository extends JpaRepository<Group, Long> {

    Group findByName(String name);
}
