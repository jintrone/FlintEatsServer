// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.etshost.msu.entity;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;

import java.util.Collection;
import java.util.List;

privileged aspect PasswordResetToken_Roo_Json {
    
    public String PasswordResetToken.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String PasswordResetToken.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static PasswordResetToken PasswordResetToken.fromJsonToPasswordResetToken(String json) {
        return new JSONDeserializer<PasswordResetToken>()
        .use(null, PasswordResetToken.class).deserialize(json);
    }
    
    public static String PasswordResetToken.toJsonArray(Collection<? extends Entity> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String PasswordResetToken.toJsonArray(Collection<? extends Entity> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<PasswordResetToken> PasswordResetToken.fromJsonArrayToPasswordResetTokens(String json) {
        return new JSONDeserializer<List<PasswordResetToken>>()
        .use("values", PasswordResetToken.class).deserialize(json);
    }
    
}
