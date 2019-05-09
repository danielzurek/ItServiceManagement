package pl.danielzurek.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import pl.danielzurek.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
    User findByDisplayName(String username);

}