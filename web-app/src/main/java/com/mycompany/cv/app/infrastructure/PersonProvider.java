package com.mycompany.cv.app.infrastructure;

import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoCollection;
import static com.mongodb.client.model.Filters.eq;
import org.bson.Document;
import com.mycompany.cv.app.models.Person;
import com.mycompany.cv.app.context.ConnectionMongoDB;
import com.mycompany.cv.app.models.Education;
import com.mycompany.cv.app.models.Experience;
import com.mycompany.cv.app.models.Skill;

import java.util.List;

public class PersonProvider {
    private final MongoCollection<Document> collection;
    private EducationProvider educationProvider;
    private ExperienceProvider experienceProvider;
    private SkillProvider skillProvider;

    public PersonProvider() {
        ConnectionMongoDB connectionMongoDB = new ConnectionMongoDB();
        connectionMongoDB.createConnection();
        this.collection = connectionMongoDB.getCollection();
        this.educationProvider = new EducationProvider(this.collection);
        this.experienceProvider = new ExperienceProvider(this.collection);
        this.skillProvider = new SkillProvider(this.collection);
    }

    public Person getPerson() {
        Document document = (Document) this.collection.find(eq("person_id", 0));
        if (document == null) {
            return null;
        }

        Person person = new Person();
        //general information
        person.setName(document.getString("name"));
        person.setEmail(document.getString("email"));
        person.setPhone(document.getString("phone"));
        person.setLocation(document.getString("location"));
        person.setResume(document.getString("resume"));
        person.setImage(document.getString("image"));

        //education
        List<Education> edu = educationProvider.getEducation(document);
        person.setEducation(edu);

        //experience
        List<Experience> exp = experienceProvider.getExperience(document);
        person.setExperience(exp);

        //skills
        List<Skill> sk = skillProvider.getSkill(document);
        person.setSkill(sk);

        return person;
    }

    public boolean updatePerson(Person person) {
        BasicDBObject basicDocument = new BasicDBObject();
        try {
            //general information
            basicDocument.append("name", person.getName());
            basicDocument.append("email", person.getEmail());
            basicDocument.append("phone", person.getPhone());
            basicDocument.append("location", person.getLocation());
            basicDocument.append("resume", person.getResume());
            basicDocument.append("image", person.getImage());

            //education
            basicDocument.append("Education", person.getEducation());

            //experience
            basicDocument.append("Experience", person.getExperience());

            //skill
            basicDocument.append("Skill", person.getSkill());

            BasicDBObject documentToUpdate = new BasicDBObject();
            documentToUpdate.append("person_id", 0);
            collection.updateOne(documentToUpdate,
                    new BasicDBObject().append("$set", basicDocument));
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
