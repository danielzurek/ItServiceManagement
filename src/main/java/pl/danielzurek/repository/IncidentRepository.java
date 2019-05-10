package pl.danielzurek.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.danielzurek.entity.Incident;

import java.util.List;

public interface IncidentRepository extends JpaRepository<Incident, Long> {
    @Query(value = "SELECT * FROM incidents WHERE resolver = ?1 and resolution is null", nativeQuery = true)
    List<Incident> allUnresolved(Long id);

    @Query(value = "SELECT * FROM incidents WHERE priority like %:priority% and resolution is null", nativeQuery = true)
    List<Incident> criticals(@Param("priority") String priority);

    @Query(value = "SELECT * FROM incidents WHERE priority like %:priority%", nativeQuery = true)
    List<Incident> criticalsHistory(@Param("priority") String priority);

    @Query(value = "SELECT * FROM incidents WHERE resolution is null ", nativeQuery = true)
    List<Incident> openIncidents();

    @Query(value = "SELECT * FROM incidents WHERE resolution is not null ", nativeQuery = true)
    List<Incident> SolvedIncidents();

}
