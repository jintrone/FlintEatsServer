// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.etshost.msu.entity;

import com.etshost.msu.entity.Reaction;
import javax.persistence.Column;
import javax.persistence.Version;

privileged aspect Reaction_Roo_Jpa_Entity {
    
    @Version
    @Column(name = "version")
    private Integer Reaction.version;
    
    public Integer Reaction.getVersion() {
        return this.version;
    }
    
    public void Reaction.setVersion(Integer version) {
        this.version = version;
    }
    
}
