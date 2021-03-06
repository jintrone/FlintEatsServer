// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.etshost.msu.entity;

import com.etshost.msu.entity.Badge;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Badge_Roo_Jpa_ActiveRecord {
    
    public static final List<String> Badge.fieldNames4OrderClauseFilter = java.util.Arrays.asList("avatar", "users");
    
    public static long Badge.countBadges() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Badge o", Long.class).getSingleResult();
    }
    
    public static List<Badge> Badge.findAllBadges() {
        return entityManager().createQuery("SELECT o FROM Badge o", Badge.class).getResultList();
    }
    
    public static List<Badge> Badge.findAllBadges(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Badge o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Badge.class).getResultList();
    }
    
    public static Badge Badge.findBadge(Long id) {
        if (id == null) return null;
        return entityManager().find(Badge.class, id);
    }
    
    public static List<Badge> Badge.findBadgeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Badge o", Badge.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Badge> Badge.findBadgeEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Badge o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Badge.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public Badge Badge.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Badge merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
