// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.etshost.msu.entity;

import com.etshost.msu.entity.Role;
import com.etshost.msu.entity.Status;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Role_Roo_Finder {
    
    public static Long Role.countFindRolesByStatus(Status status) {
        if (status == null) throw new IllegalArgumentException("The status argument is required");
        EntityManager em = Role.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Role AS o WHERE o.status = :status", Long.class);
        q.setParameter("status", status);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Role> Role.findRolesByStatus(Status status) {
        if (status == null) throw new IllegalArgumentException("The status argument is required");
        EntityManager em = Role.entityManager();
        TypedQuery<Role> q = em.createQuery("SELECT o FROM Role AS o WHERE o.status = :status", Role.class);
        q.setParameter("status", status);
        return q;
    }
    
    public static TypedQuery<Role> Role.findRolesByStatus(Status status, String sortFieldName, String sortOrder) {
        if (status == null) throw new IllegalArgumentException("The status argument is required");
        EntityManager em = Role.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Role AS o WHERE o.status = :status");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Role> q = em.createQuery(queryBuilder.toString(), Role.class);
        q.setParameter("status", status);
        return q;
    }
    
}
