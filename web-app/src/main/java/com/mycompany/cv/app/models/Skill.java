package com.mycompany.cv.app.models;


public class Skill {
    private String skillName;
    private String expertiseLevel;

    public Skill() {
    }

    public Skill(String skillName, String expertiseLevel) {
        this.skillName = skillName;
        this.expertiseLevel = expertiseLevel;
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    public String getExpertiseLevel() {
        return expertiseLevel;
    }

    public void setExpertiseLevel(String expertiseLevel) {
        this.expertiseLevel = expertiseLevel;
    }
    
}
