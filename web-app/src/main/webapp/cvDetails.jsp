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

<body>
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
        <div class="section" id="about">
            <!-- About -->
            <div class="left">
                <h2>About</h2>
                <label for="job-title">Job Title</label>
                <input type="text" id="job-title" name="job-title">
                <label for="full-name">Full Name</label>
                <input type="text" id="full-name" name="full-name">
                <label for="email">Email</label>
                <input type="email" id="email" name="email">
            </div>
            <div class="right">
                <div class="image-upload">
                    <label for="file-input">Click here to upload an image</label>
                    <input id="file-input" type="file" accept="image/*">
                </div>
                <label for="phone">Phone</label>
                <input type="tel" id="phone" name="phone">
                <label for="location">Location</label>
                <input type="text" id="location" name="location">
            </div>
        </div>

        <div class="left">
            <label for="description">Description</label>
            <textarea id="description" name="description"></textarea>
        </div>
        <hr>
        <!-- Experience -->
        <div class="section" id="experience">
            <h2>Experience</h2>
            <div id="experience-container">
                <div class="card">
                    <div class="input-container">
                        <label for="company-name-1">Company name</label>
                        <input type="text" id="company-name-1" name="company-name-1" value="Company A">
                        <label for="position-1">Position</label>
                        <input type="text" id="position-1" name="position-1" value="Developer">
                    </div>
                    <div class="input-container">
                        <label for="start-date-1">Start Date</label>
                        <input type="date" id="start-date-1" name="start-date-1" value="2020-01-01">
                        <label for="end-date-1">End Date</label>
                        <input type="text" id="end-date-1" name="end-date-1" value="Present" readonly>
                    </div>
                </div>
                <div class="card">
                    <div class="input-container">
                        <label for="company-name-2">Company name</label>
                        <input type="text" id="company-name-2" name="company-name-2" value="Company B">
                        <label for="position-2">Position</label>
                        <input type="text" id="position-2" name="position-2" value="Designer">
                    </div>
                    <div class="input-container">
                        <label for="start-date-2">Start Date</label>
                        <input type="date" id="start-date-2" name="start-date-2" value="2018-06-01">
                        <label for="end-date-2">End Date</label>
                        <input type="date" id="end-date-2" name="end-date-2" value="2020-12-31">
                    </div>
                </div>
                <div class="card">
                    <div class="input-container">
                        <label for="company-name-3">Company name</label>
                        <input type="text" id="company-name-3" name="company-name-3" value="Company C">
                        <label for="position-3">Position</label>
                        <input type="text" id="position-3" name="position-3" value="Manager">
                    </div>
                    <div class="input-container">
                        <label for="start-date-3">Start Date</label>
                        <input type="date" id="start-date-3" name="start-date-3" value="2015-03-01">
                        <label for="end-date-3">End Date</label>
                        <input type="date" id="end-date-3" name="end-date-3" value="2018-05-31">
                    </div>
                </div>
                <div class="card">
                    <div class="input-container">
                        <label for="company-name-4">Company name</label>
                        <input type="text" id="company-name-4" name="company-name-4" value="Company D">
                        <label for="position-4">Position</label>
                        <input type="text" id="position-4" name="position-4" value="Intern">
                    </div>
                    <div class="input-container">
                        <label for="start-date-4">Start Date</label>
                        <input type="date" id="start-date-4" name="start-date-4" value="2014-07-01">
                        <label for="end-date-4">End Date</label>
                        <input type="date" id="end-date-4" name="end-date-4" value="2015-02-28">
                    </div>
                </div>
            </div>
            <button id="add-experience-btn">Add professional experience</button>
        </div>
        <hr>
        <!-- Education -->
        <div class="section" id="education">
            <h2>Education</h2>
            <div id="education-container">
                <div class="card">
                    <div class="input-container">
                        <label for="institution-name-1">Institution Name</label>
                        <input type="text" id="institution-name-1" name="institution-name-1">
                    </div>
                    <div class="input-container">
                        <label for="graduation-1">Graduation</label>
                        <select id="graduation-1" name="graduation-1">
                            <option value="present">Present</option>
                            <option value="select-date">Select Date</option>
                        </select>
                        <input type="date" id="graduation-date-1" name="graduation-date-1" style="display: none;">
                    </div>
                    <div class="input-container">
                        <label for="degree-1">Degree</label>
                        <input type="text" id="degree-1" name="degree-1">
                    </div>
                </div>
                <div class="card">
                    <div class="input-container">
                        <label for="institution-name-2">Institution Name</label>
                        <input type="text" id="institution-name-2" name="institution-name-2">
                    </div>
                    <div class="input-container">
                        <label for="graduation-2">Graduation</label>
                        <select id="graduation-2" name="graduation-2">
                            <option value="present">Present</option>
                            <option value="select-date">Select Date</option>
                        </select>
                        <input type="date" id="graduation-date-2" name="graduation-date-2" style="display: none;">
                    </div>
                    <div class="input-container">
                        <label for="degree-2">Degree</label>
                        <input type="text" id="degree-2" name="degree-2">
                    </div>
                </div>
                <div class="card">
                    <div class="input-container">
                        <label for="institution-name-3">Institution Name</label>
                        <input type="text" id="institution-name-3" name="institution-name-3">
                    </div>
                    <div class="input-container">
                        <label for="graduation-3">Graduation</label>
                        <select id="graduation-3" name="graduation-3">
                            <option value="present">Present</option>
                            <option value="select-date">Select Date</option>
                        </select>
                        <input type="date" id="graduation-date-3" name="graduation-date-3" style="display: none;">
                    </div>
                    <div class="input-container">
                        <label for="degree-3">Degree</label>
                        <input type="text" id="degree-3" name="degree-3">
                    </div>
                </div>
            </div>
            <button id="add-education-btn">Add Education</button>
        </div>
        <hr>
        <!-- Skills -->
        <div class="section" id="skills">
            <h2>Skills</h2>
            <div id="skills-container" class="skills-container">
                <div class="card" id="skill-card-1">
                    <div class="input-container">
                        <label for="skill-name-1">Skill name</label>
                        <input type="text" id="skill-name-1" name="skill-name-1">
                    </div>
                    <div class="input-container">
                        <label for="expertise-level-1">Expertise Level</label>
                        <select id="expertise-level-1" name="expertise-level-1">
                            <option value="beginner">Beginner</option>
                            <option value="intermediate">Intermediate</option>
                            <option value="advanced">Advanced</option>
                        </select>
                    </div>
                </div>
                <div class="card" id="skill-card-2">
                    <div class="input-container">
                        <label for="skill-name-2">Skill name</label>
                        <input type="text" id="skill-name-2" name="skill-name-2">
                    </div>
                    <div class="input-container">
                        <label for="expertise-level-2">Expertise Level</label>
                        <select id="expertise-level-2" name="expertise-level-2">
                            <option value="beginner">Beginner</option>
                            <option value="intermediate">Intermediate</option>
                            <option value="advanced">Advanced</option>
                        </select>
                    </div>
                </div>
                <div class="card" id="skill-card-3">
                    <div class="input-container">
                        <label for="skill-name-3">Skill name</label>
                        <input type="text" id="skill-name-3" name="skill-name-3">
                    </div>
                    <div class="input-container">
                        <label for="expertise-level-3">Expertise Level</label>
                        <select id="expertise-level-3" name="expertise-level-3">
                            <option value="beginner">Beginner</option>
                            <option value="intermediate">Intermediate</option>
                            <option value="advanced">Advanced</option>
                        </select>
                    </div>
                </div>
            </div>
            <button id="add-skill-btn">Add Skill</button>
            <div class="buttons-container">
                <a href="cvMain.jsp" class="btn btn-transparent  btn-lg custom-text-color custom-bold">Save Changes</a>
                <a href="cvMain.jsp" class="btn btn-transparent  btn-lg custom-text-color custom-bold">Back</a>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    <script src="Scripts/scriptDetails.js"></script>
    <script src="Scripts/scripts.js"></script>
</body>

</html>