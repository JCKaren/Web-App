package com.mycompany.cv.app.control;

import com.mycompany.cv.app.infrastructure.PersonProvider;
import com.mycompany.cv.app.models.Person;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cv")
public class PersonServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PersonProvider personProvider = new PersonProvider();
        String actionPerson = request.getParameter("actionPerson");
        
        
        if (actionPerson == null) {
            // Retrieve the person details
            Person person = personProvider.getPerson();

            request.setAttribute("person", person);
            request.getRequestDispatcher("/personDetails.jsp").forward(request, response);
        } 
    }

    protected void savePerson(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Person person = new Person();
        person.setName(request.getParameter("inputName"));
        person.setEmail(request.getParameter("inputEmail"));
        person.setPhone(request.getParameter("inputPhone"));
        person.setLocation(request.getParameter("inputLocation"));
        person.setResume(request.getParameter("inputResume"));
        person.setImage(request.getParameter("inputImage"));

        PersonProvider personProvider = new PersonProvider();
        personProvider.updatePerson(person);

        request.setAttribute("person", person);
        request.getRequestDispatcher("/personDetails.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        savePerson(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Person Management Servlet";
    }
}
