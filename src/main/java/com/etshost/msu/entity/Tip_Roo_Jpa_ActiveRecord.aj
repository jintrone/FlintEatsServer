// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.etshost.msu.entity;

import com.etshost.msu.entity.Tip;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Tip_Roo_Jpa_ActiveRecord {
    
    public static final List<String> Tip.fieldNames4OrderClauseFilter = java.util.Arrays.asList("tipType", "text");
    
    public static long Tip.countTips() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Tip o", Long.class).getSingleResult();
    }
    
    public static List<Tip> Tip.findAllTips() {
        return entityManager().createQuery("SELECT o FROM Tip o", Tip.class).getResultList();
    }
    
    public static List<Tip> Tip.findAllTips(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Tip o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Tip.class).getResultList();
    }
    
    public static Tip Tip.findTip(Long id) {
        if (id == null) return null;
        return entityManager().find(Tip.class, id);
    }
    
    public static List<Tip> Tip.findTipEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Tip o", Tip.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public Tip Tip.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Tip merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
