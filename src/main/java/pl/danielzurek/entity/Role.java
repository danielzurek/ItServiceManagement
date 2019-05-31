package pl.danielzurek.entity;

import javax.persistence.*;
import java.util.Set;


@Entity
@Table(name = "roles")
public class Role {
    private Long id;
    private String name;
    @ManyToMany(mappedBy = "groups")
    private Set<User> usersRoles;

    public Role() {
    }

    public Role(Long id, String name, Set<User> usersRoles) {
        this.id = id;
        this.name = name;
        this.usersRoles = usersRoles;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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

    @Override
    public String toString() {
        return name;
    }
}
