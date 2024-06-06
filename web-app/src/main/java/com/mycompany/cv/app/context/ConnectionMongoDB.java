package com.mycompany.cv.app.context;

import com.mongodb.MongoClientSettings;
import com.mongodb.ServerAddress;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.util.Arrays;
import org.bson.Document;


public class ConnectionMongoDB {
    private MongoDatabase dataBase;
    private MongoCollection<Document> collection;

    public ConnectionMongoDB() {
        createConnection();
    }
    
    public MongoDatabase getDataBase() {
        return dataBase;
    }

    public void setDataBase(MongoDatabase dataBase) {
        this.dataBase = dataBase;
    }

    public MongoCollection<Document> getCollection() {
        return collection;
    }

    public void setCollection(MongoCollection<Document> collection) {
        this.collection = collection;
    }
    
    public void createConnection() {
        String server = "localhost";
        Integer port = 27017;
        try {
            MongoClient mongoClient = MongoClients.create(
                    MongoClientSettings.builder()
                            .applyToClusterSettings(builder
                                    -> builder.hosts(Arrays.asList(new ServerAddress(server, port))))
                            .build());
            this.setDataBase(mongoClient.getDatabase("CV"));
            collection = dataBase.getCollection("persons");
        } catch (Exception exe) {
            System.out.println("Connection Error.");
        }
    }
}
