package com.spring.model;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "user_name", unique = true, nullable = false)
    private String userName;

    @Column(name = "password", nullable = false)
    private String password;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "user_role",
               joinColumns = @JoinColumn(name = "user_id"),
               inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles = new HashSet<>();

    public User() {
    }

    public User(String name, String userName, String password) {
        this.name = name;
        this.userName = userName;
        this.password = password;
    }

    // Getters and setters

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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    // equals and hashCode methods

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(userName, user.userName) &&
                Objects.equals(password, user.password);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userName, password);
    }

	public String getEmail() {
		// TODO Auto-generated method stub
		return null;
	}

	public void setEmail(String email) {
		// TODO Auto-generated method stub
		
	}
}




//package com.store.model;
//
//import java.util.HashSet;
//import java.util.Objects;
//import java.util.Set;
//
//import javax.persistence.*;
//
//@Entity
//public class User {
//	@Id
//    @GeneratedValue(strategy= GenerationType.IDENTITY)
//    private Long id;
//
//	@Column(name="name")
//    private String name;
//
//    @Column(unique = true, nullable = false)
//    private String userName;
//
//    @Column(nullable = false)
//    private String password;
//    @ManyToMany
//    @JoinTable( name="user_role",
//                joinColumns = @JoinColumn(name = "user_id"),
//                inverseJoinColumns = @JoinColumn(name = "role_id"))
//    private Set<Role> roles = new HashSet<>();
//
//    public User() {
//
//    }
//
//    public User(String userName, String password, String name) {
//        this.userName = userName;
//        this.name=name;
//        this.password = password;
//    }
//
//    public User(String userName, String password, Set<Role> roles) {
//        this.userName = userName;
//        this.password = password;
//        this.roles = roles;
//    }
//
//
//    public User(String name, String password, String userName, Set<Role> roles) {
//		// TODO Auto-generated constructor stub
//    	 this.name=name;
//         this.password = password;
//         this.userName = userName;
//         this.roles = roles;
//	}
//
//	public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public String getUserName() {
//        return userName;
//    }
//
//    public void setUserName(String userName) {
//        this.userName = userName;
//    }
//
//    public String getPassword() {
//        return password;
//    }
//
//    public void setPassword(String password) {
//        this.password = password;
//    }
//
//    public Set<Role> getRoles() {
//        return roles;
//    }
//
//    public void setRoles(Set<Role> roles) {
//        this.roles = roles;
//    }
//
//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//        User user = (User) o;
//        return userName.equals(user.userName) && password.equals(user.password);
//    }
//
//    @Override
//    public int hashCode() {
//        return Objects.hash(userName, password);
//    }
//}
