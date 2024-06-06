<%@page import="com.mycompany.cv.app.models.Skill"%>
<%@page import="com.mycompany.cv.app.models.Education"%>
<%@page import="com.mycompany.cv.app.models.Experience"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.cv.app.models.Person"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Resume</title>
        <link href="https://fonts.googleapis.com/css2?family=Saira+Extra+Condensed:wght@400;700&display=swap"
              rel="stylesheet">
        <link href="Styles/styleDetails.css" rel="stylesheet" />
    </head>

    <%
        Person person = (Person) request.getAttribute("person");
    %>
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                <li class="nav-item"><a class="nav-link" href="#experience">Experience</a></li>
                <li class="nav-item"><a class="nav-link" href="#education">Education</a></li>
                <li class="nav-item"><a class="nav-link" href="#skills">Skills</a></li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <!-- Page Content -->
        <h1>Resume</h1>
        <form id="updateForm" action="cv" method="post">
            <input type="hidden" name="actionPerson" value="update">
            <div class="section" id="about">
                <!-- About -->
                <div class="left">
                    <h2>About</h2>
                    <label for="full-name">Full Name</label>
                    <input type="text" id="full-name" name="name" value="<%=person.getName()%>">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" value="<%=person.getEmail()%>">
                </div>
                <div class="right">
                    <div class="image-upload">
                        <label for="file-input">Click here to upload an image</label>
                        <input id="file-input" type="file" accept="image/*" name="image">
                    </div>
                    <label for="phone">Phone</label>
                    <input type="tel" id="phone" name="phone" value="<%=person.getPhone()%>">
                    <label for="location">Location</label>
                    <input type="text" id="location" name="location" value="<%=person.getLocation()%>">
                </div>
            </div>

            <div class="left">
                <label for="description">Description</label>
                <textarea id="description" name="resume"><%=person.getResume()%></textarea>
            </div>
            <hr>
            <!-- Experience -->
            <div class="section" id="experience">
                <h2>Experience</h2>
                <div id="experience-container">
                    <div class="card">
                        <%
                            List<Experience> experience = (List<Experience>) person.getExperience();
                            if (experience.size() > 0) {
                                for (Experience e : experience) {
                        %>
                        <div class="card">
                            <div class="input-container">
                                <label for="company-name-<%=e.getCompanyName()%>">Company name</label>
                                <input type="text" id="company-name-<%=e.getCompanyName()%>" name="company-name" value="<%=e.getCompanyName()%>">
                                <label for="position-<%=e.getPosition()%>">Position</label>
                                <input type="text" id="position-<%=e.getPosition()%>" name="position" value="<%=e.getPosition()%>">
                            </div>
                            <div class="input-container">
                                <label for="start-date-<%=e.getInitialDate()%>">Start Date</label>
                                <input type="date" id="start-date-<%=e.getInitialDate()%>" name="start-date" value="<%=e.getInitialDate()%>">
                                <label for="end-date-<%=e.getFinalDate()%>">End Date</label>
                                <input type="date" id="end-date-<%=e.getFinalDate()%>" name="end-date" value="<%=e.getFinalDate()%>">
                            </div>
                        </div>
                        <%
                                }
                            }
                        %>
                    </div>
                    <button id="add-experience-btn">Add professional experience</button>
                </div>
                <hr>
                <!-- Education -->
                <div class="section" id="education">
                    <h2>Education</h2>
                    <div id="education-container">
                        <div class="card">
                            <%
                                List<Education> education = (List<Education>) person.getEducation();
                                if (education.size() > 0) {
                                    for (Education ed : education) {
                            %>
                            <div class="input-container">
                                <label for="institution-name-<%=ed.getInstitution()%>">Institution Name</label>
                                <input type="text" id="institution-name-<%=ed.getInstitution()%>" name="institution-name" value="<%=ed.getInstitution()%>">
                            </div>
                            <div class="input-container">
                                <label for="graduation-<%=ed.getGraduationYear()%>">Graduation</label>
                                <select id="graduation-<%=ed.getGraduationYear()%>" name="graduation">
                                    <option value="present">Present</option>
                                    <option value="select-date">Select Date</option>
                                </select>
                                <input type="date" id="graduation-date-<%=ed.getGraduationYear()%>" name="graduation-date" style="display: none;">
                            </div>
                            <div class="input-container">
                                <label for="degree-<%=ed.getDegree()%>">Degree</label>
                                <input type="text" id="degree-<%=ed.getDegree()%>" name="degree" value="<%=ed.getDegree()%>">
                            </div>
                        </div>
                        <%
                                }
                            }
                        %>
                    </div>
                    <button id="add-education-btn">Add Education</button>
                </div>
                <hr>
                <!-- Skills -->
                <div class="section" id="skills">
                    <h2>Skills</h2>
                    <div id="skills-container" class="skills-container">
                        <%
                            List<Skill> skill = (List<Skill>) person.getSkill();
                            if (skill.size() > 0) {
                                for (Skill sk : skill) {
                        %>
                        <div class="card" id="skill-card-1">
                            <div class="input-container">
                                <label for="skill-name-<%=sk.getSkillName()%>">Skill name</label>
                                <input type="text" id="skill-name-<%=sk.getSkillName()%>" name="skill-name" value="<%=sk.getSkillName()%>">
                            </div>
                            <div class="input-container">
                                <label for="expertise-level-<%=sk.getExpertiseLevel()%>">Expertise Level</label>
                                <select id="expertise-level-<%=sk.getExpertiseLevel()%>" name="expertise-level">
                                    <option value="beginner">Beginner</option>
                                    <option value="intermediate">Intermediate</option>
                                    <option value="advanced">Advanced</option>
                                </select>
                            </div>
                        </div>
                        <%
                                }
                            }
                        %>
                    </div>
                    <button id="add-skill-btn">Add Skill</button>

                    <div class="modal fade" id="saveChanges" tabindex="-1" aria-labelledby="saveModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="editModalLabel">Save changes</h1>
                                    <button type="button" class="btn-close btn-transparent btn-lg custom-text-color custom-bold" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Are you done editing the information?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                    <button type="button" class="btn btn-primary" onclick="redirectToCVMain()">Yes</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </form>

        <!-- Bootstrap core JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

        <script src="Scripts/scriptDetails.js"></script>
        <script src="Scripts/scripts.js"></script>
    </body>

</html>