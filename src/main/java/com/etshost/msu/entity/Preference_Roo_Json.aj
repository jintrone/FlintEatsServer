// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.etshost.msu.entity;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;

import java.util.Collection;
import java.util.List;

privileged aspect Preference_Roo_Json {
    
    public static Preference Preference.fromJsonToPreference(String json) {
        return new JSONDeserializer<Preference>()
        .use(null, Preference.class).deserialize(json);
    }
    
    public static String Preference.toJsonArray(Collection<Entity> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String Preference.toJsonArray(Collection<Entity> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<Preference> Preference.fromJsonArrayToPreferences(String json) {
        return new JSONDeserializer<List<Preference>>()
        .use("values", Preference.class).deserialize(json);
    }
    
}
