// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.etshost.msu.entity;

import com.etshost.msu.entity.Entity;
import java.util.List;
import javax.persistence.EntityManager;

privileged aspect Entity_Roo_Jpa_ActiveRecord {
    
    public static final List<String> Entity.fieldNames4OrderClauseFilter = java.util.Arrays.asList("logger", "entityManager", "id", "created", "modified", "status", "version", "tags", "comments");
    
    public static final EntityManager Entity.entityManager() {
        EntityManager em = new Entity() {
        }.entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Entity.countEntitys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Entity o", Long.class).getSingleResult();
    }
    
    public static List<Entity> Entity.findAllEntitys() {
        return entityManager().createQuery("SELECT o FROM Entity o", Entity.class).getResultList();
    }
    
    public static List<Entity> Entity.findAllEntitys(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Entity o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Entity.class).getResultList();
    }
    
    public static Entity Entity.findEntity(Long id) {
        if (id == null) return null;
        return entityManager().find(Entity.class, id);
    }
    
    public static List<Entity> Entity.findEntityEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Entity o", Entity.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Entity> Entity.findEntityEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Entity o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Entity.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
