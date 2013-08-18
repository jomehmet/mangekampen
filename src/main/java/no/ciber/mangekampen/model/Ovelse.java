package no.ciber.mangekampen.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ManyToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField="")
@RooJson
public class Ovelse {

    @NotNull
    @Column(unique = true)
    private String navn;

    private String gruppeType;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern="mm/dd/yy")
    private Date dato;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Deltakelse> deltakelser = new HashSet<Deltakelse>();
}
