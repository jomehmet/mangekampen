package no.ciber.mangekampen.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField="")
@RooJson(deepSerialize=true)
public class Sesong {

    @NotNull
    @Column(unique = true)
    private String navn;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Ovelse> ovelser = new HashSet<Ovelse>();
}
