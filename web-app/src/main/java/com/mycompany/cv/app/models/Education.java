package com.mycompany.cv.app.models;

public class Education {

    private String institutionName;
    private String degree;
    private boolean status;
    private String graduationYear;

    public Education() {
    }

    public Education(String institutionName, String degree, boolean status, String graduationYear) {
        this.institutionName = institutionName;
        this.degree = degree;
        this.status = status;
        this.graduationYear = graduationYear;
    }

    public String getGraduationYear() {
        return graduationYear;
    }

    public void setGraduationYear(String graduationYear) {
        this.graduationYear = graduationYear;
    }

    public String getInstitution() {
        return institutionName;
    }

    public void setInstitutionName(String institutionName) {
        this.institutionName = institutionName;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

}
