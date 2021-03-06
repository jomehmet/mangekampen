// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package no.ciber.mangekampen.model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import no.ciber.mangekampen.model.Deltakelse;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Deltakelse_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Deltakelse.entityManager;
    
    public static final EntityManager Deltakelse.entityManager() {
        EntityManager em = new Deltakelse().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Deltakelse.countDeltakelses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Deltakelse o", Long.class).getSingleResult();
    }
    
    public static List<Deltakelse> Deltakelse.findAllDeltakelses() {
        return entityManager().createQuery("SELECT o FROM Deltakelse o", Deltakelse.class).getResultList();
    }
    
    public static Deltakelse Deltakelse.findDeltakelse(Long id) {
        if (id == null) return null;
        return entityManager().find(Deltakelse.class, id);
    }
    
    public static List<Deltakelse> Deltakelse.findDeltakelseEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Deltakelse o", Deltakelse.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Deltakelse.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Deltakelse.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Deltakelse attached = Deltakelse.findDeltakelse(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Deltakelse.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Deltakelse.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Deltakelse Deltakelse.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Deltakelse merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
