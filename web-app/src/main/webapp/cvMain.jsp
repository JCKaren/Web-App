<%@page import="com.mycompany.cv.app.models.Skill"%>
<%@page import="com.mycompany.cv.app.models.Education"%>
<%@page import="com.mycompany.cv.app.models.Experience"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.cv.app.models.Person"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Resume - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet"
              type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="Styles/stylesMain.css" rel="stylesheet" />
        <style>
            .custom-text-color {
                color: #bd5d38;
            }

            .custom-bold {
                font-weight: bold;
            }
        </style>
    </head>
    <body id="page-top">
        <%
            Person person = (Person) request.getAttribute("person");

        %>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">

                <span class="d-block d-lg-none"><%=person.getName()%></span>

                <span class="d-none d-lg-block"><img class="img-fluid img-profile rounded-circle mx-auto mb-2"
                                                     src="assets/img/profile.jpg" alt="..." /></span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                    aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span
                    class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Experience</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Education</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Skills</a></li>
                    <li class="nav-item"><a class="nav-link" href="cvDetails.jsp">Edit</a></li>
                </ul>
            </div>
        </nav>
        <!-- Page Content-->
        <div class="container-fluid p-0">
            <!-- About-->
            <section class="resume-section" id="about">
                <div class="resume-section-content">
                    <h1 class="mb-0">
                        <span class="text-primary"><%=person.getName()%></span>
                    </h1>
                    <p>Email: <%=person.getEmail()%> </p>
                    <p>Phone: <%=person.getPhone()%> </p>
                    <p>Location: <%=person.getLocation()%> </p>
                    <p class="lead mb-5"> <%=person.getResume()%> </p>
                    <div class="social-icons">
                        <a class="social-icon" href="#!"><i class="fab fa-linkedin-in"></i></a>
                        <a class="social-icon" href="#!"><i class="fab fa-github"></i></a>
                        <a class="social-icon" href="#!"><i class="fab fa-twitter"></i></a>
                        <a class="social-icon" href="#!"><i class="fab fa-facebook-f"></i></a>
                    </div>
                </div>
            </section>
            <hr class="m-0" />
            <!-- Experience-->
            <section class="resume-section" id="experience">
                <div class="resume-section-content">
                    <h2 class="mb-5">Experience</h2>
                    <%
                        List<Experience> experience = (List<Experience>) person.getExperience();
                        if (experience.size() > 0) {
                            for (Experience e : experience) {
                    %>
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                            <h3 class="mb-0"> <%=e.getPosition()%></h3>
                            <div class="subheading mb-3"> <%=e.getCompanyName()%> </div>
                        </div>
                        <div class="flex-shrink-0"><span class="text-primary"> <%=e.getInitialDate()%> - <%=e.getFinalDate()%></span></div>
                    </div>

                    <%
                            }
                        }
                    %>
                </div>
            </section>
            <hr class="m-0" />
            <!-- Education-->
            <section class="resume-section" id="education">
                <div class="resume-section-content">
                    <h2 class="mb-5">Education</h2>
                    <%
                        List<Education> education = (List<Education>) person.getEducation();
                        if (education.size() > 0) {
                            for (Education ed : education) {
                    %>
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                            <h3 class="mb-0"> <%=ed.getInstitution()%> </h3>
                            <div class="subheading mb-3"> <%=ed.getDegree()%> </div>
                        </div>
                        <div class="flex-shrink-0"><span class="text-primary"><%=ed.getGraduationYear()%></span></div>
                    </div>
                    <%
                            }
                        }
                    %> 
                </div>
            </section>
            <hr class="m-0" />
            <!-- Skills-->
            <section class="resume-section" id="skills">
                <div class="resume-section-content">
                    <h2 class="mb-5">Skills</h2>
                    <ul class="fa-ul mb-0">
                        <%
                            List<Skill> skill = (List<Skill>) person.getSkill();
                            if (skill.size() > 0) {
                                for (Skill sk : skill) {
                        %>
                        <li>
                            <span class="fa-li"><i class="fas fa-check"></i></span>
                            <%=sk.getSkillName()%> , <%=sk.getExpertiseLevel()%>
                        </li>
                        <%
                                }
                            }
                        %> 

                        <a href="cvDetails.jsp" class="btn btn-transparent custom-text-color custom-bold"
                           style="position: relative; top: 20px; ">Edit</a>
                </div>
            </section>
            <hr class="m-0" />
            <!-- Bootstrap core JS-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
            <!-- Core theme JS-->
            <script src="Scripts/scripts.js"></script>
    </body>

</html>