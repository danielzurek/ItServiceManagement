package pl.danielzurek.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.danielzurek.entity.Incident;

import java.util.List;

public interface IncidentRepository extends JpaRepository<Incident, Long> {
    @Query(value = "SELECT * FROM incidents WHERE resolver = ?1", nativeQuery = true)
    List<Incident> allUnresolved(Long id);
}
