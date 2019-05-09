package pl.danielzurek.entity;


import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "groups")
public class Group {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @ManyToMany(mappedBy = "groups")
    private Set<User> usersGroups;
    @OneToMany
    private List <Incident> incidents;

    public Group() {
    }

    public Group(String name, Set<User> usersGroups, List<Incident> incidents) {
        this.name = name;
        this.usersGroups = usersGroups;
        this.incidents = incidents;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<User> getUsersGroups() {
        return usersGroups;
    }

    public void setUsersGroups(Set<User> usersGroups) {
        this.usersGroups = usersGroups;
    }

    public List<Incident> getIncidents() {
        return incidents;
    }

    public void setIncidents(List<Incident> incidents) {
        this.incidents = incidents;
    }

    @Override
    public String toString() {
        return name;
    }
}
