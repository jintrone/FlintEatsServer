// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.etshost.msu.entity;

import com.etshost.msu.entity.Role;
import com.etshost.msu.entity.User;
import java.util.Set;

privileged aspect Role_Roo_JavaBean {
    
    public String Role.getName() {
        return this.name;
    }
    
    public void Role.setName(String name) {
        this.name = name;
    }
    
    public String Role.getDescription() {
        return this.description;
    }
    
    public void Role.setDescription(String description) {
        this.description = description;
    }
    
    public Set<User> Role.getUsers() {
        return this.users;
    }
    
    public void Role.setUsers(Set<User> users) {
        this.users = users;
    }
    
}
