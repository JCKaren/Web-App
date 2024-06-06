package com.mycompany.cv.app.infrastructure;

import com.mongodb.client.MongoCollection;
import com.mycompany.cv.app.models.Education;
import org.bson.Document;

import java.util.ArrayList;
import java.util.List;

public class EducationProvider {

    private final MongoCollection<Document> collection;

    public EducationProvider(MongoCollection<Document> collection) {
        this.collection = collection;
    }

    public List<Education> getEducation(Document document) {
        List<Document> educationMongoLst = (List<Document>) document.get("Education");
        List<Education> educationLst = new ArrayList<>();
        if (educationMongoLst != null) {
            for (Document e : educationMongoLst) {
                Education education = new Education();
                education.setInstitutionName(e.getString("institutionName"));
                education.setDegree(e.getString("degree"));
                education.setStatus(e.getBoolean("status"));
                education.setGraduationYear(e.getString("graduationYear"));
                educationLst.add(education);
            }
        }
        return educationLst;
    }
}

