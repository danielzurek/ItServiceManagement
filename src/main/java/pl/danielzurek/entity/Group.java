package pl.danielzurek.entity;


import javax.persistence.*;
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

    public Group() {
    }

    public Group(String name, Set<User> usersGroups) {
        this.name = name;
        this.usersGroups = usersGroups;
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

    @Override
    public String toString() {
        return name;
    }
}
