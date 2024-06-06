document.addEventListener("DOMContentLoaded", function () {
    const addExperienceBtn = document.getElementById("add-experience-btn");
    const experienceContainer = document.getElementById("experience-container");

    addExperienceBtn.addEventListener("click", function () {
        const card = document.createElement("div");
        card.classList.add("card");

        const companyNameLabel = document.createElement("label");
        companyNameLabel.textContent = "Company name";
        const companyNameInput = document.createElement("input");
        companyNameInput.setAttribute("type", "text");

        const positionLabel = document.createElement("label");
        positionLabel.textContent = "Position";
        const positionInput = document.createElement("input");
        positionInput.setAttribute("type", "text");

        const startDateLabel = document.createElement("label");
        startDateLabel.textContent = "Start Date";
        const startDateInput = document.createElement("input");
        startDateInput.setAttribute("type", "date");

        const endDateLabel = document.createElement("label");
        endDateLabel.textContent = "Final Date";
        const endDateSelect = document.createElement("select");
        const optionPresent = document.createElement("option");
        optionPresent.textContent = "Present";
        const optionDate = document.createElement("option");
        optionDate.textContent = "Select Date";
        endDateSelect.appendChild(optionPresent);
        endDateSelect.appendChild(optionDate);

        endDateSelect.addEventListener("change", function () {
            if (endDateSelect.value === "Present") {
                endDateInput.setAttribute("type", "text");
                endDateInput.value = "Present";
                endDateInput.setAttribute("readonly", true);
            } else {
                endDateInput.setAttribute("type", "date");
                endDateInput.removeAttribute("readonly");
                endDateInput.value = "";
            }
        });

        const endDateInput = document.createElement("input");
        endDateInput.setAttribute("type", "text");
        endDateInput.setAttribute("value", "Present");
        endDateInput.setAttribute("readonly", true);

        const inputContainer1 = document.createElement("div");
        inputContainer1.classList.add("input-container");
        inputContainer1.appendChild(companyNameLabel);
        inputContainer1.appendChild(companyNameInput);
        inputContainer1.appendChild(positionLabel);
        inputContainer1.appendChild(positionInput);

        const inputContainer2 = document.createElement("div");
        inputContainer2.classList.add("input-container");
        inputContainer2.appendChild(startDateLabel);
        inputContainer2.appendChild(startDateInput);
        inputContainer2.appendChild(endDateLabel);
        inputContainer2.appendChild(endDateSelect);
        inputContainer2.appendChild(endDateInput);

        card.appendChild(inputContainer1);
        card.appendChild(inputContainer2);

        experienceContainer.appendChild(card);
    });

    document.querySelectorAll('#education-container select').forEach(function (selectElement) {
        selectElement.addEventListener('change', function (event) {
            const dateInput = event.target.nextElementSibling;
            if (event.target.value === 'select-date') {
                dateInput.style.display = 'block';
            } else {
                dateInput.style.display = 'none';
            }
        });
    });

    const addEducationBtn = document.getElementById("add-education-btn");
    const educationContainer = document.getElementById("education-container");

    addEducationBtn.addEventListener("click", function () {
        const card = document.createElement("div");
        card.classList.add("card");

        const institutionNameLabel = document.createElement("label");
        institutionNameLabel.textContent = "Institution Name";
        const institutionNameInput = document.createElement("input");
        institutionNameInput.setAttribute("type", "text");

        const degreeLabel = document.createElement("label");
        degreeLabel.textContent = "Degree";
        const degreeInput = document.createElement("input");
        degreeInput.setAttribute("type", "text");

        const graduationLabel = document.createElement("label");
        graduationLabel.textContent = "Graduation";
        const graduationSelect = document.createElement("select");
        const optionPresent = document.createElement("option");
        optionPresent.value = "present";
        optionPresent.textContent = "Present";
        const optionDate = document.createElement("option");
        optionDate.value = "select-date";
        optionDate.textContent = "Select Date";
        graduationSelect.appendChild(optionPresent);
        graduationSelect.appendChild(optionDate);

        graduationSelect.addEventListener("change", function () {
            if (graduationSelect.value === "select-date") {
                graduationDateInput.style.display = "block";
            } else {
                graduationDateInput.style.display = "none";
            }
        });

        const graduationDateInput = document.createElement("input");
        graduationDateInput.setAttribute("type", "date");
        graduationDateInput.style.display = "none";

        const inputContainer1 = document.createElement("div");
        inputContainer1.classList.add("input-container");
        inputContainer1.appendChild(institutionNameLabel);
        inputContainer1.appendChild(institutionNameInput);

        const inputContainer2 = document.createElement("div");
        inputContainer2.classList.add("input-container");
        inputContainer2.appendChild(degreeLabel);
        inputContainer2.appendChild(degreeInput);

        const inputContainer3 = document.createElement("div");
        inputContainer3.classList.add("input-container");
        inputContainer3.appendChild(graduationLabel);
        inputContainer3.appendChild(graduationSelect);
        inputContainer3.appendChild(graduationDateInput);

        card.appendChild(inputContainer1);
        card.appendChild(inputContainer2);
        card.appendChild(inputContainer3);

        educationContainer.appendChild(card);
    });

    const addSkillBtn = document.getElementById("add-skill-btn");
    const skillsContainer = document.getElementById("skills-container");

    addSkillBtn.addEventListener("click", function () {
        const card = document.createElement("div");
        card.classList.add("card");

        const skillNameLabel = document.createElement("label");
        skillNameLabel.textContent = "Skill name";
        const skillNameInput = document.createElement("input");
        skillNameInput.setAttribute("type", "text");

        const expertiseLevelLabel = document.createElement("label");
        expertiseLevelLabel.textContent = "Expertise Level";
        const expertiseLevelSelect = document.createElement("select");
        const optionBeginner = document.createElement("option");
        optionBeginner.textContent = "Beginner";
        const optionIntermediate = document.createElement("option");
        optionIntermediate.textContent = "Intermediate";
        const optionAdvanced = document.createElement("option");
        optionAdvanced.textContent = "Advanced";
        expertiseLevelSelect.appendChild(optionBeginner);
        expertiseLevelSelect.appendChild(optionIntermediate);
        expertiseLevelSelect.appendChild(optionAdvanced);

        const inputContainer1 = document.createElement("div");
        inputContainer1.classList.add("input-container");
        inputContainer1.appendChild(skillNameLabel);
        inputContainer1.appendChild(skillNameInput);

        const inputContainer2 = document.createElement("div");
        inputContainer2.classList.add("input-container");
        inputContainer2.appendChild(expertiseLevelLabel);
        inputContainer2.appendChild(expertiseLevelSelect);

        card.appendChild(inputContainer1);
        card.appendChild(inputContainer2);

        const existingSkillsCount = skillsContainer.querySelectorAll(".card").length;
        const newSkillId = "skill-card-" + (existingSkillsCount + 1);
        card.setAttribute("id", newSkillId);

        skillsContainer.appendChild(card);
    });
});
