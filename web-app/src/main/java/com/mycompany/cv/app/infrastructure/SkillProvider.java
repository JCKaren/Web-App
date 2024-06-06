package com.mycompany.cv.app.infrastructure;

import com.mongodb.client.MongoCollection;
import com.mycompany.cv.app.models.Skill;
import org.bson.Document;

import java.util.ArrayList;
import java.util.List;

public class SkillProvider {
    private final MongoCollection<Document> collection;

    public SkillProvider(MongoCollection<Document> collection) {
        this.collection = collection;
    }

    public List<Skill> getSkill(Document document) {
        List<Document> skillMongoLst = (List<Document>) document.get("Skill");
        List<Skill> skillLst = new ArrayList<>();
        if (skillMongoLst != null) {
            for (Document e : skillMongoLst) {
                Skill skill = new Skill();
                skill.setSkillName(e.getString("skillName"));
                skill.setExpertiseLevel(e.getString("expertiseLevel"));
                skillLst.add(skill);
            }
        }
        return skillLst;
    }
}

