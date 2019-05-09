package pl.danielzurek.entity;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Table(name = "incidents")
public class Incident {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
//    @NotEmpty
//    private String requestedBy;
    @NotEmpty
    private String company;
    @NotEmpty
    private String location;
    @Email
    private String email;
    @NotNull
    private Integer contactNumber;
    private String category;
    private String subCategory;
    //  @NotEmpty
//    private String affectedServices;
    @Column
    private java.time.LocalDateTime createdAt;
    @NotEmpty
    private String source;
    @NotEmpty
    private String status;
    @NotEmpty
    private String priority;
    @NotEmpty
    private String summary;
    @Column(columnDefinition = "longtext")
    @NotEmpty
    private String description;
    @Column(columnDefinition = "longtext")
    private String workNotes;
    @ManyToOne
    @JoinColumn(name = "requestor")
    private Customer requestor;
    @ManyToOne
    @JoinColumn(name = "assigmentGroup")
    private Group assigmentGroup;
    @ManyToOne
    @JoinColumn(name = "resolver")
    private User resolver ;
    @Column(columnDefinition = "longtext")
    private String resolution;
    @Column(columnDefinition = "longtext")
    private String details;

    public Incident() {
    }

    public Incident(String company, String location, String email, Integer contactNumber, String category, String subCategory, LocalDateTime createdAt, String source, String status, String priority, String summary, String description, String workNotes, Customer requestor, Group assigmentGroup, User resolver, String resolution, String details) {
        this.company = company;
        this.location = location;
        this.email = email;
        this.contactNumber = contactNumber;
        this.category = category;
        this.subCategory = subCategory;
        this.createdAt = createdAt;
        this.source = source;
        this.status = status;
        this.priority = priority;
        this.summary = summary;
        this.description = description;
        this.workNotes = workNotes;
        this.requestor = requestor;
        this.assigmentGroup = assigmentGroup;
        this.resolver = resolver;
        this.resolution = resolution;
        this.details = details;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(Integer contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(String subCategory) {
        this.subCategory = subCategory;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Customer getRequestor() {
        return requestor;
    }

    public void setRequestor(Customer requestor) {
        this.requestor = requestor;
    }

    public Group getAssigmentGroup() {
        return assigmentGroup;
    }

    public void setAssigmentGroup(Group assigmentGroup) {
        this.assigmentGroup = assigmentGroup;
    }

    public User getResolver() {
        return resolver;
    }

    public void setResolver(User resolver) {
        this.resolver = resolver;
    }

    public String getWorkNotes() {
        return workNotes;
    }

    public void setWorkNotes(String workNotes) {
        this.workNotes = workNotes;
    }

    public String getResolution() {
        return resolution;
    }

    public void setResolution(String resolution) {
        this.resolution = resolution;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }
}
