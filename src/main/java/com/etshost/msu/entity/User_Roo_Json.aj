// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.etshost.msu.entity;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;

import java.util.Collection;
import java.util.List;

privileged aspect User_Roo_Json {
    
    public static User User.fromJsonToUser(String json) {
        return new JSONDeserializer<User>()
        .use(null, User.class).deserialize(json);
    }
    
    public static String User.toJsonArray(Collection<? extends Entity> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String User.toJsonArray(Collection<? extends Entity> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<User> User.fromJsonArrayToUsers(String json) {
        return new JSONDeserializer<List<User>>()
        .use("values", User.class).deserialize(json);
    }
    
}
