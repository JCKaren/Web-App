package com.mycompany.cv.app.models;

import java.util.List;

public class Person {
    private String name;
    private String email;
    private String phone;
    private String location;
    private String resume;
    private String image;
    private List<Education> education;
    private List<Skill> skill;
    private List<Experience> experience;

    public Person() {
    }

    public Person(String name, String email, String phone, String location, String resume, String image, List<Education> education, List<Skill> skill, List<Experience> experience) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.location = location;
        this.resume = resume;
        this.image = image;
        this.education = education;
        this.skill = skill;
        this.experience = experience;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }

    public List<Education> getEducation() {
        return education;
    }

    public void setEducation(List<Education> education) {
        this.education = education;
    }

    public List<Skill> getSkill() {
        return skill;
    }

    public void setSkill(List<Skill> skill) {
        this.skill = skill;
    }

    public List<Experience> getExperience() {
        return experience;
    }

    public void setExperience(List<Experience> experience) {
        this.experience = experience;
    }
    
}
