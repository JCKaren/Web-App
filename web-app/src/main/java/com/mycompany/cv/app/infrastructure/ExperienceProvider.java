package com.mycompany.cv.app.infrastructure;

import com.mongodb.client.MongoCollection;
import com.mycompany.cv.app.models.Experience;
import org.bson.Document;

import java.util.ArrayList;
import java.util.List;

public class ExperienceProvider {
    private final MongoCollection<Document> collection;

    public ExperienceProvider(MongoCollection<Document> collection) {
        this.collection = collection;
    }

    public List<Experience> getExperience(Document document) {
        List<Document> experienceMongoLst = (List<Document>) document.get("Experience");
        List<Experience> experienceLst = new ArrayList<>();
        if (experienceMongoLst != null) {
            for (Document e : experienceMongoLst) {
                Experience experience = new Experience();
                experience.setCompanyName(e.getString("companyName"));
                experience.setInitialDate(e.getString("initialDate"));
                experience.setFinalDate(e.getString("finalDate"));
                experience.setPosition(e.getString("position"));
                experience.setStatus(e.getBoolean("status"));
                experienceLst.add(experience);
            }
        }
        return experienceLst;
    }
}

