// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package no.ciber.mangekampen.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import no.ciber.mangekampen.model.Sesong;

privileged aspect Sesong_Roo_Jpa_Entity {
    
    declare @type: Sesong: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Sesong.id;
    
    public Long Sesong.getId() {
        return this.id;
    }
    
    public void Sesong.setId(Long id) {
        this.id = id;
    }
    
}
