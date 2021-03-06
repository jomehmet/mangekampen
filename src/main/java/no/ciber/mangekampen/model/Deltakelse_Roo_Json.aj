// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package no.ciber.mangekampen.model;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import no.ciber.mangekampen.model.Deltakelse;

privileged aspect Deltakelse_Roo_Json {
    
    public String Deltakelse.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public String Deltakelse.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(this);
    }
    
    public static Deltakelse Deltakelse.fromJsonToDeltakelse(String json) {
        return new JSONDeserializer<Deltakelse>().use(null, Deltakelse.class).deserialize(json);
    }
    
    public static String Deltakelse.toJsonArray(Collection<Deltakelse> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static String Deltakelse.toJsonArray(Collection<Deltakelse> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<Deltakelse> Deltakelse.fromJsonArrayToDeltakelses(String json) {
        return new JSONDeserializer<List<Deltakelse>>().use(null, ArrayList.class).use("values", Deltakelse.class).deserialize(json);
    }
    
}
