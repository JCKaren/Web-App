package com.mycompany.cv.app.models;

public class Experience {
    private String companyName;
    private String initialDate;
    private String finalDate;
    private String position;
    private boolean status;

    public Experience() {
    }

    public Experience(String companyName, String initialDate, String finalDate, String position, boolean status) {
        this.companyName = companyName;
        this.initialDate = initialDate;
        this.finalDate = finalDate;
        this.position = position;
        this.status = status;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }


    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getInitialDate() {
        return initialDate;
    }

    public void setInitialDate(String initialDate) {
        this.initialDate = initialDate;
    }

    public String getFinalDate() {
        return finalDate;
    }

    public void setFinalDate(String finalDate) {
        this.finalDate = finalDate;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
    
}
