/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cog.team8.entities;
/**
 *
 * @author Tan Kee Hock
 */

enum Language {
    CHINESE, ENGLISH;
}
public class Person {
    private String name;
    private String password;
    private String location;
    private Race race;
    private Language language;

    public Person(String name, String password, String location, Race race, Language language) {
        this.name = name;
        this.password = password;
        this.location = location;
        this.race = race;
        this.language = language;
    }

    public String getName() {
        return name;
    }
    public String getPassword() {
        return password;
    }
    public String getLocation() {
        return location;
    }
    public Race getRace() {
        return race;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setRace(Race race) {
        this.race = race;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }
    public Language getLanguage() {
        return language;
    }
    
    
}
