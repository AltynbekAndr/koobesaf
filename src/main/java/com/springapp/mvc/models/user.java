package com.springapp.mvc.models;
import javax.persistence.*;


@Entity
public class user {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private Integer id;
private String name;
private String lname;
private String email;
private String password;
private Integer idmessage;
private Integer idmessage2;

    public Integer getIdmessage() {
        return idmessage;
    }

    public void setIdmessage(Integer idmessage) {
        this.idmessage = idmessage;
    }

    public Integer getIdmessage2() {
        return idmessage2;
    }

    public void setIdmessage2(Integer idmessage2) {
        this.idmessage2 = idmessage2;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
